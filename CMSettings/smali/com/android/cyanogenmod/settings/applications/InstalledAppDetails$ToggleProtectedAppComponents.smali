.class Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleProtectedAppComponents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$1;

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 647
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->access$800(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 660
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 665
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 647
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    .line 650
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 651
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    # invokes: Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->access$600(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    # invokes: Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->access$700(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;ZZ)V

    .line 654
    :cond_0
    return-void
.end method
