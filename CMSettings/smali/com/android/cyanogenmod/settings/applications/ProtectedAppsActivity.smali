.class public Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;,
        Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;
    }
.end annotation


# instance fields
.field private mAppClickListener:Landroid/view/View$OnClickListener;

.field private mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIsAuth:Z

.field private mWaitUserAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 461
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$2;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v0, "appEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 218
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v3}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 185
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v10, "protected_components"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "hiddenComponents":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 189
    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 190
    .local v3, "flattened":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 192
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 193
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "flattened":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    new-instance v7, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v7, p0, v2, v11}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 200
    .local v7, "list":Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v9, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v9, p0, p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 201
    .local v9, "task":Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    new-array v10, v11, [Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void
.end method

.method private resetLock()V
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "recreate_pattern_lock"

    const/4 v2, 0x0

    const-class v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "lockPattern":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method private updateProtectedComponentsList()V
    .locals 9

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "protected_components"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "protectedComponents":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    .line 123
    :cond_0
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "flattened":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 125
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 126
    .local v2, "flat":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 127
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 128
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v2    # "flat":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 152
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 155
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f0900b4

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->setTitle(I)V

    .line 65
    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 68
    new-instance v1, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    const v2, 0x7f04006b

    invoke-direct {v1, p0, p0, v2}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    .line 69
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v1, v3}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    .line 71
    const v1, 0x7f100114

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    .line 72
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string v1, "needs_unlock"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 80
    :cond_0
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v1, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "lockPattern":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    .end local v0    # "lockPattern":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    const v0, 0x7f0900b2

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 173
    const v0, 0x7f0900b3

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 227
    :sswitch_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->reset()V

    goto :goto_0

    .line 230
    :sswitch_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->resetLock()V

    goto :goto_0

    .line 233
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->finish()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$1;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)V

    .line 111
    .local v0, "refreshAppsTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppEntry;>;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    .line 117
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "needs_unlock"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method
