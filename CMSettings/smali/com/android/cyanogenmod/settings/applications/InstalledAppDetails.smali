.class public Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsButton:Landroid/widget/Button;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 103
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 160
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 161
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 162
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 163
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 164
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 165
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 166
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 204
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 750
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 1394
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1429
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshButtons()V

    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1411
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    invoke-direct {p0, v6}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1427
    :goto_0
    return-void

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 1417
    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1419
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1421
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1385
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1386
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1387
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1388
    .local v1, "newEnt":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1389
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 1391
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1392
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 312
    const-string v0, ""

    :goto_0
    return-object v0

    .line 300
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908a4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908a5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908a6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908a7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1469
    :goto_0
    return v0

    .line 1466
    :catch_0
    move-exception v0

    .line 1469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 252
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f090867

    .line 353
    const/4 v0, 0x0

    .line 357
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 369
    :goto_0
    return v0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_2
    const v1, 0x7f090868

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initAppOpsButton()V
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x1

    .line 473
    .local v0, "enabled":Z
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOpsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOpsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_1
    return-void
.end method

.method private initDataButtons()V
    .locals 5

    .prologue
    const v4, 0x7f090869

    const/4 v3, 0x0

    .line 259
    const/4 v0, 0x0

    .line 263
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x41

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 269
    const/4 v0, 0x0

    .line 270
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 282
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->isProtectedApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 288
    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    :cond_2
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    :cond_3
    return-void

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v2, 0x7f09087b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 277
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 316
    invoke-static {}, Landroid/os/Environment;->isNoEmulatedStorageExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 321
    .local v0, "dataOnly":Z
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_2

    move v0, v2

    .line 322
    :goto_1
    const/4 v1, 0x1

    .line 323
    .local v1, "moveDisable":Z
    if-eqz v0, :cond_3

    .line 324
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0908a0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 334
    :goto_2
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_6

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "moveDisable":Z
    :cond_2
    move v0, v3

    .line 321
    goto :goto_1

    .line 325
    .restart local v1    # "moveDisable":Z
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 326
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0908a1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 328
    const/4 v1, 0x0

    goto :goto_2

    .line 330
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0908a2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 331
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 332
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 337
    :cond_6
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 450
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 452
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 454
    .local v0, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 460
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 469
    :goto_1
    return-void

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 464
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 467
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 456
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f090864

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 373
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 374
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    move v3, v6

    .line 375
    .local v3, "isBundled":Z
    :goto_1
    const/4 v1, 0x1

    .line 376
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_a

    .line 377
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v9, 0x7f09086a

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, "showSpecialDisable":Z
    if-eqz v3, :cond_0

    .line 380
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 381
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_0
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_1

    .line 384
    const/4 v4, 0x0

    .line 386
    :cond_1
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v4, :cond_9

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .end local v4    # "showSpecialDisable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    const/4 v1, 0x0

    .line 414
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    if-eqz v3, :cond_d

    .line 416
    const/4 v1, 0x0

    .line 432
    :cond_3
    :goto_4
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_4

    .line 433
    const/4 v1, 0x0

    .line 438
    :cond_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->isProtectedApp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 439
    const/4 v1, 0x0

    .line 442
    :cond_5
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    if-eqz v1, :cond_6

    .line 445
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :cond_6
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_7
    move v5, v7

    .line 373
    goto :goto_0

    :cond_8
    move v3, v7

    .line 374
    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    .restart local v4    # "showSpecialDisable":Z
    :cond_9
    move v5, v8

    .line 386
    goto :goto_2

    .line 388
    .end local v4    # "showSpecialDisable":Z
    :cond_a
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 389
    if-eqz v3, :cond_b

    .line 390
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_3

    .line 391
    :cond_b
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v5, v8

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_c

    .line 396
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 397
    const/4 v1, 0x0

    goto :goto_3

    .line 399
    :cond_c
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 418
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 420
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_f

    .line 423
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v6, :cond_e

    move v1, v6

    :goto_5
    goto :goto_4

    :cond_e
    move v1, v7

    goto :goto_5

    .line 427
    :cond_f
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move v1, v6

    :goto_6
    goto :goto_4

    :cond_10
    move v1, v7

    goto :goto_6
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1202
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1204
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1205
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1207
    new-instance v3, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1211
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1212
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 1214
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f090888

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isProtectedApp()Z
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 345
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 348
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1154
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1155
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1156
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f090869

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1157
    if-ne v1, v4, :cond_0

    .line 1158
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1163
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1164
    return-void

    .line 1161
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1183
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1184
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1186
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1187
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1188
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1194
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1195
    return-void

    .line 1192
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1167
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1168
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1169
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1170
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1171
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1172
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->initAppOpsButton()V

    .line 1180
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0908a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOpsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1083
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1085
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1086
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1087
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1093
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1143
    :goto_0
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 1144
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1145
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1147
    :cond_2
    return-void

    .line 1096
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1097
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1098
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1099
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1100
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 1101
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1112
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 1113
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1114
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_5
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 1117
    iput-wide v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1118
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    :cond_6
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1121
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 1122
    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1123
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_7
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 1126
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1127
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    :cond_8
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_c

    .line 1131
    :cond_9
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1136
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_d

    .line 1137
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1103
    .end local v0    # "cacheSize":J
    :cond_a
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 1104
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1105
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    :cond_b
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1108
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1109
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1133
    .restart local v0    # "cacheSize":J
    :cond_c
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1134
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1139
    :cond_d
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1140
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 49

    .prologue
    .line 803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 804
    const/16 v44, 0x1

    .line 1028
    :goto_0
    return v44

    .line 806
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v28

    .line 808
    .local v28, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 809
    const/16 v44, 0x0

    goto :goto_0

    .line 812
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    if-nez v44, :cond_2

    .line 813
    const/16 v44, 0x0

    goto :goto_0

    .line 817
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v23, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->clear()V

    .line 820
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    .line 821
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/ResolveInfo;

    .line 822
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 823
    .local v6, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    .line 827
    .local v27, "metadata":Landroid/os/Bundle;
    if-eqz v27, :cond_3

    .line 828
    const-string v44, "android.app.home.alternate"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 829
    .local v26, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v26    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 836
    .end local v6    # "activityPkg":Ljava/lang/String;
    .end local v27    # "metadata":Landroid/os/Bundle;
    .end local v36    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v33, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v25, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 843
    const/16 v22, 0x0

    .line 845
    .local v22, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 851
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v21

    .line 854
    .local v21, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f10012c

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 855
    .local v15, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f10012d

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 856
    .local v16, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v44

    if-gtz v44, :cond_6

    if-eqz v22, :cond_8

    :cond_6
    const/4 v14, 0x1

    .line 857
    .local v14, "autoLaunchEnabled":Z
    :goto_3
    if-nez v14, :cond_9

    if-nez v21, :cond_9

    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 897
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const-string v45, "activity"

    invoke-virtual/range {v44 .. v45}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 899
    .local v10, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 910
    .local v18, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->setVisibility(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f100132

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 916
    .local v30, "permsView":Landroid/widget/RelativeLayout;
    new-instance v12, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 917
    .local v12, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v34

    .line 921
    .local v34, "premiumSmsPermission":I
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-gtz v44, :cond_7

    if-eqz v34, :cond_12

    .line 923
    :cond_7
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 928
    :goto_5
    const v44, 0x7f100137

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 930
    .local v38, "securityBillingDesc":Landroid/widget/TextView;
    const v44, 0x7f100138

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    .line 932
    .local v39, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_13

    .line 934
    const/16 v44, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 936
    const v44, 0x7f100139

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Spinner;

    .line 938
    .local v41, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const v45, 0x7f0c005e

    const v46, 0x1090008

    invoke-static/range {v44 .. v46}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 941
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v44, 0x1090009

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 942
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 944
    add-int/lit8 v44, v34, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 945
    new-instance v44, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 953
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v41    # "spinner":Landroid/widget/Spinner;
    :goto_6
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-lez v44, :cond_16

    .line 955
    const v44, 0x7f10013b

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 957
    .local v40, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 958
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v29

    .line 962
    .local v29, "packages":[Ljava/lang/String;
    if-eqz v29, :cond_16

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_16

    .line 963
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v32, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v24, 0x0

    :goto_7
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_15

    .line 965
    aget-object v31, v29, v24

    .line 966
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 964
    :goto_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 848
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .end local v14    # "autoLaunchEnabled":Z
    .end local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v16    # "autoLaunchView":Landroid/widget/TextView;
    .end local v18    # "compatMode":I
    .end local v21    # "hasBindAppWidgetPermission":Z
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v30    # "permsView":Landroid/widget/RelativeLayout;
    .end local v31    # "pkg":Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "premiumSmsPermission":I
    .end local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v20

    .line 849
    .local v20, "e":Landroid/os/RemoteException;
    const-string v44, "InstalledAppDetails"

    const-string v45, "mUsbManager.hasDefaults"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 856
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v16    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v21    # "hasBindAppWidgetPermission":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 860
    .restart local v14    # "autoLaunchEnabled":Z
    :cond_9
    if-eqz v21, :cond_e

    if-eqz v14, :cond_e

    const/16 v43, 0x1

    .line 862
    .local v43, "useBullets":Z
    :goto_9
    if-eqz v21, :cond_f

    .line 863
    const v44, 0x7f090857

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 868
    :goto_a
    const/16 v42, 0x0

    .line 869
    .local v42, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0b0019

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 871
    .local v17, "bulletIndent":I
    if-eqz v14, :cond_b

    .line 872
    const v44, 0x7f09086b

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 873
    .local v13, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 874
    .local v37, "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_a

    .line 875
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 877
    :cond_a
    if-nez v42, :cond_10

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 880
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_b
    :goto_b
    if-eqz v21, :cond_d

    .line 881
    const v44, 0x7f09086c

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 883
    .local v9, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 884
    .restart local v37    # "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_c

    .line 885
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 888
    :cond_c
    if-nez v42, :cond_11

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 891
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_d
    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 860
    .end local v17    # "bulletIndent":I
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_e
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 865
    .restart local v43    # "useBullets":Z
    :cond_f
    const v44, 0x7f090856

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 877
    .restart local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v17    # "bulletIndent":I
    .restart local v37    # "s":Landroid/text/SpannableString;
    .restart local v42    # "text":Ljava/lang/CharSequence;
    :cond_10
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto/16 :goto_b

    .line 888
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_11
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto :goto_c

    .line 925
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "bulletIndent":I
    .end local v37    # "s":Landroid/text/SpannableString;
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .restart local v18    # "compatMode":I
    .restart local v30    # "permsView":Landroid/widget/RelativeLayout;
    .restart local v34    # "premiumSmsPermission":I
    :cond_12
    const/16 v44, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 949
    .restart local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_13
    const/16 v44, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    const/16 v44, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 970
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v31    # "pkg":Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 971
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 972
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v44

    goto/16 :goto_8

    .line 975
    .end local v31    # "pkg":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 976
    .local v5, "N":I
    if-lez v5, :cond_16

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 979
    .local v35, "res":Landroid/content/res/Resources;
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_18

    .line 980
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 993
    .local v11, "appListStr":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f10013a

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 995
    .local v19, "descr":Landroid/widget/TextView;
    const v44, 0x7f090895

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v19    # "descr":Landroid/widget/TextView;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1004
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1006
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v44, v0

    if-nez v44, :cond_1d

    .line 1008
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-nez v44, :cond_1c

    const/16 v44, 0x1

    :goto_e
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1028
    :cond_17
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 981
    .restart local v5    # "N":I
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v35    # "res":Landroid/content/res/Resources;
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_18
    const/16 v44, 0x2

    move/from16 v0, v44

    if-ne v5, v0, :cond_19

    .line 982
    const v44, 0x7f090896

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "appListStr":Ljava/lang/String;
    goto/16 :goto_d

    .line 985
    .end local v11    # "appListStr":Ljava/lang/String;
    :cond_19
    add-int/lit8 v44, v5, -0x2

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 986
    .restart local v11    # "appListStr":Ljava/lang/String;
    add-int/lit8 v24, v5, -0x3

    :goto_f
    if-ltz v24, :cond_1b

    .line 987
    if-nez v24, :cond_1a

    const v44, 0x7f090898

    :goto_10
    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 986
    add-int/lit8 v24, v24, -0x1

    goto :goto_f

    .line 987
    :cond_1a
    const v44, 0x7f090899

    goto :goto_10

    .line 990
    :cond_1b
    const v44, 0x7f090897

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v11, v45, v46

    const/16 v46, 0x1

    add-int/lit8 v47, v5, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    .line 1009
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_1c
    const/16 v44, 0x0

    goto/16 :goto_e

    .line 1014
    :cond_1d
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x2200

    invoke-virtual/range {v44 .. v46}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1017
    .restart local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v44, v0

    if-nez v44, :cond_17

    .line 1021
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-eqz v44, :cond_1e

    const/16 v44, 0x1

    goto/16 :goto_0

    :cond_1e
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 1023
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v20

    .line 1024
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 1068
    const v0, 0x7f090856

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1069
    const v0, 0x7f09086d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1072
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 759
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 761
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 763
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 764
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 767
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 768
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 771
    :try_start_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2241

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 759
    goto :goto_0

    .line 761
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 780
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iput-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v9, 0x0

    .line 671
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v5, 0x7f100015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v9, v4, v9, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 674
    const v4, 0x7f100010

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 675
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;)V

    .line 676
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    const v4, 0x7f100011

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 679
    .local v2, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    const v4, 0x7f10014d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 682
    .local v3, "packageName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    const v4, 0x7f10014e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 687
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 688
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f09089f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 1076
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1077
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 1079
    .local v1, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1080
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1450
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1451
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1454
    .local v2, "nm":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1455
    .local v0, "enable":Z
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    .end local v0    # "enable":Z
    :goto_0
    return-void

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1222
    invoke-static {p1, p2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1223
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1224
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 788
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 791
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 792
    const/4 v1, 0x1

    .line 799
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 794
    :catch_0
    move-exception v1

    .line 799
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1376
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1377
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1378
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1379
    iput-boolean p3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1380
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1408
    :goto_0
    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1406
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 617
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 618
    if-ne p1, v5, :cond_2

    .line 619
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 620
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 625
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 626
    new-instance v2, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    invoke-direct {p0, v5, v5}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 646
    :cond_1
    :goto_1
    return-void

    .line 636
    :cond_2
    if-ne p1, v1, :cond_1

    .line 637
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 639
    :pswitch_0
    new-instance v1, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;

    invoke-direct {v1, p0, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 630
    :catch_0
    move-exception v1

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1551
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1552
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1554
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1555
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1557
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1559
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1560
    if-nez p2, :cond_4

    .line 1561
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1563
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1477
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1478
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 1479
    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    .line 1480
    invoke-direct {p0, v4, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1483
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    .line 1484
    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1486
    :cond_2
    new-instance v7, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1490
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 1491
    invoke-direct {p0, v5, v6, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1493
    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1496
    :cond_5
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 1497
    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1498
    :cond_6
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 1499
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v6, :cond_0

    .line 1500
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1502
    :try_start_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :goto_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1507
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f10012c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1509
    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f10012d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1510
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1503
    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 1504
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1512
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 1513
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1514
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1515
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    invoke-virtual {p0, v3, v4}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1521
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1523
    :cond_9
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    .line 1525
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    .line 1526
    new-instance v6, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1528
    :cond_a
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1529
    :cond_b
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 1530
    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1532
    :cond_c
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_f

    .line 1533
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    .line 1534
    new-instance v7, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1536
    :cond_d
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    .line 1538
    .local v4, "moveFlags":I
    :cond_e
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1539
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1540
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 1541
    .end local v4    # "moveFlags":I
    :cond_f
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOpsButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    .line 1542
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.APP_OPS_DETAILS_SETTINGS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1545
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    .line 490
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->newSession(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    .line 491
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 492
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 493
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 494
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 495
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 497
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 498
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 499
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 501
    new-instance v1, Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/cyanogenmod/settings/applications/CanBeOnSdCardChecker;

    .line 504
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->resume()V

    .line 506
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 508
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 509
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 573
    const v0, 0x7f090865

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 575
    const/4 v0, 0x2

    const v1, 0x7f0900b4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 578
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f100148

    const v7, 0x7f100146

    const/16 v6, 0x8

    .line 514
    const v4, 0x7f04006c

    invoke-virtual {p1, v4, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 516
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 517
    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/cyanogenmod/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 519
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 520
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09089c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 523
    const v4, 0x7f10011c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 524
    const v4, 0x7f10011e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 525
    const v4, 0x7f100123

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 526
    const v4, 0x7f100120

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 527
    const v4, 0x7f100125

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 529
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_0
    const v4, 0x7f100117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 536
    .local v1, "btnPanel":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 537
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f09085e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 538
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 539
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    const v4, 0x7f100118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 543
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 545
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 548
    const v4, 0x7f100126

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 549
    .local v2, "data_buttons_panel":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 550
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 553
    const v4, 0x7f10012a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 554
    const v4, 0x7f10012b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 556
    const v4, 0x7f10012e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 559
    const v4, 0x7f10012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 560
    const v4, 0x7f100130

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 561
    const v4, 0x7f100131

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 563
    const v4, 0x7f100119

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 565
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "appops"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 566
    const v4, 0x7f100135

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppOpsButton:Landroid/widget/Button;

    .line 568
    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 717
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 718
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->release()V

    .line 719
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 720
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 603
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 604
    .local v0, "menuId":I
    if-ne v0, v2, :cond_0

    .line 605
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 612
    :goto_0
    return v2

    .line 607
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 609
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .local v1, "protectedApps":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1    # "protectedApps":Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 612
    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 733
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 744
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 710
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 711
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->pause()V

    .line 712
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 713
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    .line 582
    const/4 v0, 0x1

    .line 583
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 584
    const/4 v0, 0x0

    .line 596
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->isProtectedApp()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 599
    return-void

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 586
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 588
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 590
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_6
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 594
    const/4 v0, 0x0

    goto :goto_0
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
    .line 737
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 698
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 700
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 701
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mSession:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->resume()V

    .line 702
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 703
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-direct {p0, v2, v2}, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 706
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 748
    return-void
.end method
