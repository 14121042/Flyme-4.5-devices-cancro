.class Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
.super Ljava/lang/Object;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityFilter"
.end annotation


# instance fields
.field private final launcherResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private onlyLauncher:Z

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->onlyLauncher:Z

    .line 564
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 566
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->updateLauncherInfoList()V

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
    .param p2, "x1"    # Landroid/content/pm/PackageManager;
    .param p3, "x2"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;

    .prologue
    .line 557
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1500(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    move-result-object v1

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->access$1600(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 589
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->onlyLauncher:Z

    if-eqz v1, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 592
    monitor-exit v2

    .line 594
    :cond_0
    return v0

    .line 588
    .end local v0    # "show":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 592
    .restart local v0    # "show":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public updateLauncherInfoList()V
    .locals 7

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 574
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    monitor-enter v5

    .line 575
    :try_start_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 576
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 577
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    return-void
.end method
