.class public Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;
.implements Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;,
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;,
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;,
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;,
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
    }
.end annotation


# instance fields
.field private mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

.field private mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

.field private mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

.field private mEmptyView:Landroid/view/View;

.field private mEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedDesktopState:I

.field private mExtraOptions:Landroid/widget/FrameLayout;

.field private mProgressBar:Landroid/view/View;

.field private mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

.field private mUserListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    .line 557
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getStateForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->save()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
    .param p1, "x1"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    return-object v0
.end method

.method private enableForAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iput v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 179
    const-string v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->writeValue(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetInvalidated()V

    .line 181
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 182
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->transactFragment()V

    .line 183
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    return-void
.end method

.method private getExpandedDesktopState(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 85
    const-string v1, "policy_control"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "value":Ljava/lang/String;
    const-string v1, "immersive.full=*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getStateForPackage(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "state":I
    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveStatusFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :cond_0
    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveNavigationFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    if-nez v0, :cond_2

    .line 235
    const/4 v0, 0x2

    .line 241
    :cond_1
    :goto_0
    return v0

    .line 237
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAppEntries(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v6, 0x0

    .line 273
    .local v6, "lastSectionIndex":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v11, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v9, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 276
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v7, 0x0

    .line 278
    .local v7, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 279
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v12, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 280
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 283
    .local v5, "label":Ljava/lang/String;
    iget-boolean v12, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v12, :cond_2

    .line 284
    const-string v10, "--"

    .line 291
    .local v10, "sectionIndex":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_0

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 293
    :cond_0
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    move-object v6, v10

    .line 298
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 286
    const-string v10, ""

    .restart local v10    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 288
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 301
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/String;
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v12, p1, v11, v9}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->access$200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 302
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 304
    .local v1, "e":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    iget-object v13, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 307
    .end local v1    # "e":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    :cond_5
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    if-eqz v12, :cond_6

    .line 308
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_6
    iget v12, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    .line 312
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 314
    :cond_7
    return-void
.end method

.method private hideListView()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-void
.end method

.method private rebuild()V
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    sget-object v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->rebuild(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->handleAppEntries(Ljava/util/List;)V

    .line 322
    :cond_0
    return-void
.end method

.method private removeFragment()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 206
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v3, "desktop_prefs"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 207
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 209
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 211
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void
.end method

.method private transactFragment()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->newInstance()Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    move-result-object v0

    .line 198
    .local v0, "expandedDesktopExtraPrefs":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 199
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f1000fd

    const-string v3, "desktop_prefs"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 201
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 202
    return-void
.end method

.method private userConfigurableSettings()V
    .locals 2

    .prologue
    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 188
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->writeValue(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetInvalidated()V

    .line 191
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->showListView()V

    .line 192
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->removeFragment()V

    .line 194
    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    return-void
.end method


# virtual methods
.method getStateDrawable(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 341
    const v0, 0x7f0200ad

    :goto_0
    return v0

    .line 334
    :pswitch_0
    const v0, 0x7f0200ae

    goto :goto_0

    .line 336
    :pswitch_1
    const v0, 0x7f0200ac

    goto :goto_0

    .line 338
    :pswitch_2
    const v0, 0x7f0200ab

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    .line 96
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->newSession(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    .line 97
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->resume()V

    .line 98
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    .line 100
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getExpandedDesktopState(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 101
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    if-ne v0, v3, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;-><init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const v0, 0x7f04005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 127
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->save()V

    .line 128
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->pause()V

    .line 129
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->release()V

    .line 130
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 135
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .line 174
    .local v0, "holder":Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    .line 175
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->updateLauncherInfoList()V

    .line 251
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 252
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 265
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->handleAppEntries(Ljava/util/List;)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 116
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 347
    if-eqz p2, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->enableForAll()V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->userConfigurableSettings()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0902fa

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f1000fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    .line 145
    const v0, 0x7f1000fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    .line 146
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .line 151
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setOnStateOffLabel(I)V

    .line 153
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setOnStateOnLabel(I)V

    .line 154
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->show()V

    .line 156
    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 157
    const v0, 0x7f10006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    .line 159
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    if-ne v0, v2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 161
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->showListView()V

    .line 162
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 167
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
