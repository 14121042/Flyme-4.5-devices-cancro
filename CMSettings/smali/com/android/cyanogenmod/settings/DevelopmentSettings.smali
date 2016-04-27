.class public Lcom/android/cyanogenmod/settings/DevelopmentSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;
.implements Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/SwitchPreference;

.field private mAdbOverNetwork:Landroid/preference/SwitchPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/SwitchPreference;

.field private mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDevelopmentShortcut:Landroid/preference/SwitchPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceHighEndGfx:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/ListPreference;

.field private mKillAppLongpressBack:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private mProcessStats:Landroid/preference/PreferenceScreen;

.field private mQuickBoot:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUpdateRecovery:Landroid/preference/SwitchPreference;

.field private mUpdateRecoveryDialog:Landroid/app/Dialog;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUseAwesomePlayer:Landroid/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "262144"

    sput-object v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 2044
    new-instance v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings$2;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 2014
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DevelopmentSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 462
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    .prologue
    .line 1544
    new-instance v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings$1;-><init>(Lcom/android/cyanogenmod/settings/DevelopmentSettings;)V

    .line 1552
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090945

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090946

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090868

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1559
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 984
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 988
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 987
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 988
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1897
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1899
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1903
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1905
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1906
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1907
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1909
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1910
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1911
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1913
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 1914
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1915
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1917
    :cond_4
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 1918
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1919
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    .line 1921
    :cond_5
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 932
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v4

    .line 935
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 939
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 943
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 947
    goto :goto_0
.end method

.method private findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/AnimationScalePreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .line 476
    .local v0, "pref":Lcom/android/cyanogenmod/settings/AnimationScalePreference;
    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/AnimationScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 477
    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/AnimationScalePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-object v0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 484
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-object v0
.end method

.method public static isRootForAppsEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 769
    const-string v4, "persist.sys.root_access"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 770
    .local v1, "value":I
    const-string v4, "init.svc.su_daemon"

    const-string v5, "absent"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 772
    .local v0, "daemonState":Z
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 525
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 527
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 2

    .prologue
    .line 499
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 805
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 731
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 732
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 734
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 736
    invoke-virtual {p0, v4, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 732
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 740
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 741
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetRootAccessOptions()V

    .line 742
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 743
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 744
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetDevelopmentShortcutOptions()V

    .line 745
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetUpdateRecoveryOptions()V

    .line 746
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 747
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 748
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 750
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 751
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 753
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 755
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 756
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    .line 757
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 758
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 759
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 884
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 689
    return-void
.end method

.method private resetRootAccessOptions()V
    .locals 4

    .prologue
    .line 790
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "oldValue":Ljava/lang/String;
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "service.adb.root"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 800
    return-void
.end method

.method private resetUpdateRecoveryOptions()V
    .locals 2

    .prologue
    .line 1575
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    const-string v0, "persist.sys.recovery_update"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :cond_0
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 917
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 540
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 542
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAllOptions()V

    .line 543
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 956
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1825
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f090943

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090944

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 951
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdbOverNetwork()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_port"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 705
    .local v3, "port":I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 707
    .local v1, "enabled":Z
    :cond_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v6, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 709
    const/4 v4, 0x0

    .line 711
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 712
    const-string v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 715
    .local v5, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 721
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 722
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "hostAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 728
    .end local v2    # "hostAddress":Ljava/lang/String;
    :goto_1
    return-void

    .line 716
    .restart local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "DevelopmentSettings"

    const-string v7, "wifiManager, getConnectionInfo()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 726
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    const v7, 0x7f0900f3

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 682
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_reboot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 684
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 608
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 609
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 610
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 612
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    const-string v2, "adb_notify"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 614
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 615
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 616
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 620
    :cond_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 622
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 623
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 625
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/cyanogenmod/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 628
    :cond_1
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 630
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v2, "debug_view_attributes"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {p0, v5, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 632
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    const-string v5, "enable_quickboot"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 633
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 634
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 635
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 636
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 637
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 638
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 639
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 640
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 641
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 642
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 643
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 644
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 645
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 646
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 647
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 648
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 649
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 650
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 651
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 652
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 653
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 654
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 655
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 656
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 657
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 658
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 659
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 660
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 661
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 662
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 663
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 664
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateUseNuplayerOptions()V

    .line 665
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 666
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 667
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 668
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDevelopmentShortcutOptions()V

    .line 669
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateUpdateRecoveryOptions()V

    .line 670
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateHighEndGfxOptions()V

    .line 673
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 610
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 612
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 616
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 620
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 623
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 628
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 630
    goto/16 :goto_6

    :cond_a
    move v3, v4

    .line 632
    goto/16 :goto_7
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1438
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1439
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1440
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/cyanogenmod/settings/AnimationScalePreference;)V

    .line 1441
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/android/cyanogenmod/settings/AnimationScalePreference;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .prologue
    .line 1428
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 1429
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1430
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1432
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/cyanogenmod/settings/AnimationScalePreference;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    .end local v0    # "scale":F
    :goto_0
    return-void

    .line 1433
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1504
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1505
    .local v1, "limit":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1506
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1507
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1508
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1509
    if-eqz v0, :cond_0

    .line 1510
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1512
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1513
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1521
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1506
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1518
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1519
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 960
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 961
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 962
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 964
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 965
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 966
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 976
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 962
    goto :goto_0

    .line 968
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 969
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 970
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 971
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 974
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1396
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1398
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1182
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1184
    const-string v1, ""

    .line 1187
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1188
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1189
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1191
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1197
    :goto_1
    return-void

    .line 1188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1196
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1209
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 891
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 893
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 895
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 900
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 901
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 905
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090b50

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 907
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 912
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 893
    goto :goto_0

    .line 901
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 902
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 909
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090b4f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDevelopmentShortcutOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_shortcut"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 700
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1026
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1027
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1029
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1030
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1033
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1035
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1036
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1037
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1039
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1040
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1042
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v3    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local v6    # "showCpu":I
    .restart local v7    # "showUpdates":I
    :cond_1
    move v10, v9

    .line 1037
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 1041
    goto :goto_1

    .line 1045
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1297
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1085
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 825
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 826
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 827
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 831
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 832
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 833
    move v3, v2

    .line 837
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 838
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 841
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 831
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateHighEndGfxOptions()V
    .locals 3

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.force_highendgfx"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1584
    return-void
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1422
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1424
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 850
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kill_app_longpress_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 852
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0c0041

    .line 1347
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1348
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1350
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    if-nez v0, :cond_0

    .line 1352
    const-string v0, "256K"

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1357
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1358
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1359
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1361
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1362
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1363
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1364
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1366
    :cond_2
    move v2, v1

    .line 1370
    :cond_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1371
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1374
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1363
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1094
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1479
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1481
    const-string v1, ""

    .line 1484
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1485
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1486
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1487
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1488
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1494
    :goto_1
    return-void

    .line 1485
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1493
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1454
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1457
    const-string v1, ""

    .line 1460
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1461
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1462
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1463
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1464
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1470
    :goto_1
    return-void

    .line 1461
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1469
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090ad8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 864
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090ad7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1009
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1011
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 762
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1539
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1541
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1173
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1162
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1127
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1130
    const-string v1, "hide"

    .line 1133
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1134
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1135
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1136
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1137
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_1
    return-void

    .line 1134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1142
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1019
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1021
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1218
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1219
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1221
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1222
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1226
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1227
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1229
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f09098d

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f090989

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1238
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1219
    goto :goto_0

    .line 1232
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1235
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStayAwakeOptions()V
    .locals 6

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 810
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "summaries":[Ljava/lang/String;
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 817
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 822
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1000
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1001
    return-void

    .line 1000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1102
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1104
    const-string v1, ""

    .line 1107
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1108
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1109
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1111
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1117
    :goto_1
    return-void

    .line 1108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1116
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1284
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1286
    return-void
.end method

.method private updateUpdateRecoveryOptions()V
    .locals 3

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.recovery_update"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1565
    return-void
.end method

.method private updateUseNuplayerOptions()V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.media.use-awesome"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1275
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 920
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 922
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 923
    return-void

    .line 920
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1330
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1331
    return-void

    .line 1329
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1338
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1339
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1340
    return-void

    .line 1338
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1308
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1311
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1321
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1322
    return-void

    .line 1320
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1246
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1248
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1249
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1252
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1253
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1258
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1246
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 1258
    goto :goto_1
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/android/cyanogenmod/settings/AnimationScalePreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1446
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1447
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1448
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/cyanogenmod/settings/AnimationScalePreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1446
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1449
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1525
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1527
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1525
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1528
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 867
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 868
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 869
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 872
    return-void

    .line 869
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1401
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1402
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1404
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1406
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1407
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1411
    :goto_1
    return-void

    .line 1402
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1409
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1200
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1203
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1204
    return-void

    .line 1200
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1212
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1215
    return-void

    .line 1212
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 876
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_shortcut"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    return-void

    .line 692
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1068
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1069
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 1070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1071
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 1073
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1301
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1303
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1305
    return-void

    .line 1301
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1303
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1088
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1090
    return-void

    .line 1088
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeHighEndGfxOptions()V
    .locals 2

    .prologue
    .line 1587
    const-string v1, "persist.sys.force_highendgfx"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1590
    return-void

    .line 1587
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1415
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    return-void

    .line 1417
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kill_app_longpress_back"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 847
    return-void

    .line 844
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1377
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1379
    sput-object v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1381
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1386
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1387
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1388
    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1393
    return-void

    .line 1381
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1389
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1390
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1097
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1099
    return-void

    .line 1097
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1497
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1499
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1500
    return-void

    .line 1497
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1475
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1476
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1006
    return-void

    .line 1004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 776
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "oldValue":Ljava/lang/String;
    const-string v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "service.adb.root"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 787
    return-void
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1536
    return-void

    .line 1533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1176
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1179
    return-void

    .line 1176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1165
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1168
    return-void

    .line 1165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1153
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1156
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1157
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1016
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1051
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1052
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1054
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1056
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1263
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1264
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1265
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1270
    :goto_0
    return-void

    .line 1267
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1268
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStayAwakeOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1146
    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1147
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 1150
    return-void
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 997
    :goto_1
    return-void

    .line 993
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1120
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1123
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1124
    return-void

    .line 1120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1292
    return-void

    .line 1289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUpdateRecoveryOptions()V
    .locals 2

    .prologue
    .line 1568
    const-string v1, "persist.sys.recovery_update"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1571
    return-void

    .line 1568
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeUseAwesomePlayerOptions()V
    .locals 2

    .prologue
    .line 1278
    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1281
    return-void

    .line 1278
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 928
    return-void

    .line 926
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1335
    return-void

    .line 1334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1344
    return-void

    .line 1343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1317
    return-void

    .line 1314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1326
    return-void

    .line 1325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 515
    .local v0, "activity":Lcom/android/cyanogenmod/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .line 516
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1628
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1629
    if-ne p2, v1, :cond_0

    .line 1630
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1631
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1632
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    if-nez p1, :cond_3

    .line 1635
    if-ne p2, v1, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1637
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1639
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1643
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 1924
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_1

    .line 1925
    if-ne p2, v4, :cond_0

    .line 1926
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1927
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1929
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1930
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1931
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 1934
    if-ne p2, v4, :cond_0

    .line 1935
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_port"

    const/16 v5, 0x15b3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 1939
    if-ne p2, v4, :cond_0

    .line 1941
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1942
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 1943
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1944
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 1945
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1948
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_4

    .line 1949
    if-ne p2, v4, :cond_0

    .line 1950
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1951
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1953
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1954
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1959
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1963
    :cond_4
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_6

    .line 1964
    if-ne p2, v4, :cond_5

    .line 1965
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1968
    :cond_5
    const-string v3, "0"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1970
    :cond_6
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 1971
    if-ne p2, v4, :cond_0

    .line 1972
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeUpdateRecoveryOptions()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 299
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 301
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 302
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 304
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 305
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 307
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 309
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 311
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 317
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    .line 318
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 458
    :goto_0
    return-void

    .line 322
    :cond_1
    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 324
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 327
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 328
    const-string v3, "adb_notify"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 329
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v3, "adb_over_network"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    .line 331
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 332
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 333
    if-eqz v0, :cond_2

    .line 334
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 339
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 340
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    iput-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 344
    :cond_3
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 345
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 346
    const-string v3, "keep_screen_on_modes"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    .line 347
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 348
    const-string v3, "oem_unlock_enable"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 349
    invoke-static {}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v3

    if-nez v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 351
    iput-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 353
    :cond_4
    const-string v3, "enable_quickboot"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    .line 354
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    .line 355
    const-string v3, "debug_view_attributes"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 356
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 357
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v3, "advanced_reboot"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    .line 359
    const-string v3, "update_recovery"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    .line 360
    const-string v3, "development_shortcut"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    .line 362
    const-string v3, "debug_drawing_category"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 365
    .local v1, "debugDrawingCategory":Landroid/preference/PreferenceGroup;
    const-string v3, "pref_force_highend_gfx"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    .line 366
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-nez v3, :cond_5

    .line 367
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    iput-object v6, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    .line 371
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 372
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 373
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 374
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 375
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 376
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 377
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 378
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 379
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 382
    :cond_6
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.qapp.quickboot"

    invoke-static {v3, v4, v5}, Lcom/android/cyanogenmod/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 386
    :cond_7
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 387
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 389
    const-string v3, "verify_apps_over_usb"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 390
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_8

    .line 392
    if-eqz v0, :cond_b

    .line 393
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    :cond_8
    :goto_1
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 399
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 400
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 401
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 402
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 403
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 404
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 405
    const-string v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 406
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 407
    const-string v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 408
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 409
    const-string v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 410
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 411
    const-string v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 412
    const-string v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 413
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 414
    const-string v3, "wifi_verbose_logging"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 415
    const-string v3, "wifi_aggressive_handover"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 416
    const-string v3, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 417
    const-string v3, "select_logd_size"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 419
    const-string v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .line 420
    const-string v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .line 421
    const-string v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .line 422
    const-string v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 423
    const-string v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 424
    const-string v3, "simulate_color_space"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 425
    const-string v3, "use_awesomeplayer"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    .line 426
    const-string v3, "usb_audio"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 428
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 430
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 435
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 437
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v3, "kill_app_longpress_back"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 442
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 443
    .local v2, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v2, :cond_9

    .line 444
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 448
    :cond_9
    const-string v3, "proc_stats"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    .line 449
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v3, "root_access"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 451
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 452
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v3

    if-nez v3, :cond_a

    .line 453
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_a
    const-string v3, "development_tools"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 457
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    .end local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_b
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2003
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2004
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 2005
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 592
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 594
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->hide()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1979
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1980
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1983
    :cond_0
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1999
    :cond_1
    :goto_0
    return-void

    .line 1984
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1985
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 1986
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1987
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_5

    .line 1988
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 1989
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1991
    :cond_4
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1992
    :cond_5
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_6

    .line 1993
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateUpdateRecoveryOptions()V

    .line 1994
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1995
    :cond_6
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1996
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 1997
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1833
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1834
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 1836
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1893
    :goto_0
    return v0

    .line 1838
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1839
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1841
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v2, :cond_2

    .line 1842
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1844
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v2, :cond_3

    .line 1845
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1847
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v2, :cond_4

    .line 1848
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/cyanogenmod/settings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1850
    :cond_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1851
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1853
    :cond_5
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1854
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1856
    :cond_6
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1857
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1859
    :cond_7
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1860
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1862
    :cond_8
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1863
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1865
    :cond_9
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1866
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1868
    :cond_a
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1869
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1871
    :cond_b
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_e

    .line 1872
    const-string v2, "0"

    const-string v3, "persist.sys.root_access"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1874
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 1875
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1876
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_c

    .line 1877
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1879
    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1884
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1886
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1889
    :cond_e
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_f

    .line 1890
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeStayAwakeOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 1893
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    if-ne p1, v0, :cond_1

    .line 1652
    :cond_0
    check-cast p1, Lcom/android/cyanogenmod/settings/AnimationScalePreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/AnimationScalePreference;->click()V

    .line 1654
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x7f0900cf

    const v6, 0x1040013

    const v5, 0x1040009

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1659
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v2

    .line 1663
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    .line 1664
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1665
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1666
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 1667
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1669
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090955

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090954

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1675
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1677
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1679
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1680
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1681
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1683
    :cond_4
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_6

    .line 1684
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_notify"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 1687
    :cond_6
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_9

    .line 1688
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1689
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    .line 1690
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1692
    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0900f2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1698
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1700
    :cond_8
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_port"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1702
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 1704
    :cond_9
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v3, :cond_b

    .line 1705
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1706
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090956

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1711
    :cond_b
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_d

    .line 1712
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1713
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_2

    .line 1716
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_f

    .line 1717
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v1, v2

    goto :goto_3

    .line 1720
    :cond_f
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_10

    .line 1721
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1722
    :cond_10
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_12

    .line 1723
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1725
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1727
    :cond_11
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1730
    :cond_12
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_14

    .line 1731
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto :goto_4

    .line 1734
    :cond_14
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_16

    .line 1735
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "debug_view_attributes"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    move v1, v2

    goto :goto_5

    .line 1738
    :cond_16
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_18

    .line 1739
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_quickboot"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_17

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_6

    .line 1741
    :cond_18
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_19

    .line 1742
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/cyanogenmod/settings/AppPicker;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1743
    :cond_19
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1a

    .line 1744
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1745
    :cond_1a
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1b

    .line 1746
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1747
    :cond_1b
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1c

    .line 1748
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1749
    :cond_1c
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1d

    .line 1750
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1751
    :cond_1d
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1e

    .line 1752
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1753
    :cond_1e
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1f

    .line 1754
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1755
    :cond_1f
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_20

    .line 1756
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1757
    :cond_20
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_21

    .line 1758
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1759
    :cond_21
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_22

    .line 1760
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1761
    :cond_22
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_23

    .line 1762
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1763
    :cond_23
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_24

    .line 1764
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1765
    :cond_24
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_25

    .line 1766
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1767
    :cond_25
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_26

    .line 1768
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1769
    :cond_26
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_27

    .line 1770
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1771
    :cond_27
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_28

    .line 1772
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1773
    :cond_28
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_29

    .line 1774
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1775
    :cond_29
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2a

    .line 1776
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1777
    :cond_2a
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2b

    .line 1778
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1779
    :cond_2b
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2c

    .line 1780
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1781
    :cond_2c
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2d

    .line 1782
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1783
    :cond_2d
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2e

    .line 1784
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeUseAwesomePlayerOptions()V

    goto/16 :goto_0

    .line 1785
    :cond_2e
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2f

    .line 1786
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1787
    :cond_2f
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_30

    .line 1788
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0

    .line 1789
    :cond_30
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_31

    .line 1790
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeDevelopmentShortcutOptions()V

    goto/16 :goto_0

    .line 1791
    :cond_31
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_32

    .line 1792
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 1793
    :cond_32
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_35

    .line 1794
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1795
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_33

    .line 1796
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1798
    :cond_33
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1799
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    .line 1813
    :goto_7
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1806
    :cond_34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUpdateRecoveryDialog:Landroid/app/Dialog;

    goto :goto_7

    .line 1815
    :cond_35
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_36

    .line 1816
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->writeHighEndGfxOptions()V

    goto/16 :goto_0

    .line 1818
    :cond_36
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 547
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 549
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 552
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 553
    if-eqz v1, :cond_0

    .line 554
    const v2, 0x7f090934

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 588
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 564
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 569
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 570
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 572
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 573
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 575
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 583
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 584
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 586
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->show()V

    .line 587
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    goto :goto_0

    .line 566
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1594
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->getSwitch()Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1598
    if-eqz p2, :cond_3

    .line 1599
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 1600
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1601
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1603
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090958

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090957

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1610
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1612
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1613
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1615
    iput-boolean p2, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1616
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1619
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2008
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2010
    new-instance v0, Lcom/android/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2012
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 602
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 603
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 604
    return-void
.end method
