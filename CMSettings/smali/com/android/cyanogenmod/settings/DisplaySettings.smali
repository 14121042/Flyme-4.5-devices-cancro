.class public Lcom/android/cyanogenmod/settings/DisplaySettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mLcdDensityPreference:Landroid/preference/ListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mProximityWakePreference:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWake:Landroid/preference/SwitchPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

.field private mWifiDisplayPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 733
    new-instance v0, Lcom/android/cyanogenmod/settings/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DisplaySettings$5;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 135
    new-instance v0, Lcom/android/cyanogenmod/settings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings$1;-><init>(Lcom/android/cyanogenmod/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 144
    new-instance v0, Lcom/android/cyanogenmod/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DisplaySettings$2;-><init>(Lcom/android/cyanogenmod/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/DisplaySettings;)Lcom/android/cyanogenmod/settings/FontDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DisplaySettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 419
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 420
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 454
    :goto_1
    return-void

    .line 419
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 423
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 424
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 425
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 428
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 429
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 430
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 434
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 435
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 436
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 440
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 441
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 453
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 442
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 446
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 453
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getCurrentDensity()I
    .locals 3

    .prologue
    .line 305
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 308
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 312
    :goto_0
    return v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_0
.end method

.method private getDefaultDensity()I
    .locals 3

    .prologue
    .line 294
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 297
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 301
    :goto_0
    return v2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 301
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const-string v0, "notification_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    :cond_1
    const-string v0, "battery_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 607
    :cond_2
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 608
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 610
    :cond_3
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 326
    const v0, 0x1120023

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 322
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x200

    .line 719
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 720
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 721
    .local v0, "cmHardwareManager":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-virtual {v0, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    const-string v3, "double_tap_wake_gesture"

    invoke-virtual {v0, v5}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 725
    .local v1, "enabled":Z
    invoke-virtual {v0, v5, v1}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 726
    const-string v3, "DisplaySettings"

    const-string v4, "Failed to restore tap-to-wake settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 728
    .restart local v1    # "enabled":Z
    :cond_1
    const-string v3, "DisplaySettings"

    const-string v4, "Tap-to-wake settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 333
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 381
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 345
    .local v3, "rotationEnabled":Z
    :cond_1
    if-nez v3, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0900bc

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 350
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v5, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, "mode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v4, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 359
    .local v0, "delim":Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 360
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 363
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 366
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 369
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 372
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 374
    const-string v0, ", "

    .line 371
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :cond_7
    const-string v0, " & "

    goto :goto_2

    .line 379
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0900bd

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateLcdDensityPreferenceDescription(I)V
    .locals 5
    .param p1, "currentDensity"    # I

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getDefaultDensity()I

    move-result v1

    if-ne p1, v1, :cond_0

    const v0, 0x7f09030d

    .line 412
    .local v0, "summaryResId":I
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    return-void

    .line 410
    .end local v0    # "summaryResId":I
    :cond_0
    const v0, 0x7f09030c

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 515
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 516
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 519
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, "brightnessMode":I
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 526
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wake_gesture_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 528
    .local v3, "value":I
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 532
    .end local v3    # "value":I
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "doze_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 534
    .restart local v3    # "value":I
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 538
    .end local v3    # "value":I
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 539
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x11200b9

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 541
    .local v1, "defaultValue":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "proximity_on_wake"

    if-eqz v1, :cond_7

    move v4, v5

    :goto_3
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v2, v5

    .line 543
    .local v2, "enabled":Z
    :goto_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 545
    .end local v1    # "defaultValue":Z
    .end local v2    # "enabled":Z
    :cond_3
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_4
    move v4, v6

    .line 522
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v3    # "value":I
    :cond_5
    move v4, v6

    .line 528
    goto :goto_1

    :cond_6
    move v4, v6

    .line 534
    goto :goto_2

    .end local v3    # "value":I
    .restart local v1    # "defaultValue":Z
    :cond_7
    move v4, v6

    .line 541
    goto :goto_3

    :cond_8
    move v2, v6

    goto :goto_4
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 384
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 386
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 388
    const-string v4, ""

    .line 406
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    return-void

    .line 390
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 391
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 392
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 393
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 395
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 396
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 397
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 398
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 399
    move v0, v2

    .line 396
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0906ff

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeLcdDensityPreference(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .prologue
    .line 555
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 557
    .local v5, "am":Landroid/app/IActivityManager;
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 559
    .local v3, "wm":Landroid/view/IWindowManager;
    new-instance v0, Lcom/android/cyanogenmod/settings/DisplaySettings$4;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/DisplaySettings$4;-><init>(Lcom/android/cyanogenmod/settings/DisplaySettings;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V

    .line 592
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 593
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super/range {p0 .. p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 156
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 157
    .local v18, "resolver":Landroid/content/ContentResolver;
    invoke-static {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 159
    const v21, 0x7f060020

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 161
    const-string v21, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 163
    .local v12, "displayPrefs":Landroid/preference/PreferenceCategory;
    const-string v21, "interface"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 166
    .local v15, "interfacePrefs":Landroid/preference/PreferenceCategory;
    const-string v21, "display_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 167
    const-string v21, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 172
    :cond_0
    const-string v21, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/PreferenceScreen;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x112007d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "persist.debug.wfd.enable"

    const/16 v22, -0x1

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_1
    const-string v21, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x112006f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-nez v21, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_2
    const-string v21, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 188
    const-string v21, "screen_off_timeout"

    const-wide/16 v22, 0x7530

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 190
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 196
    const-string v21, "lcd_density"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-eqz v21, :cond_9

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    :cond_3
    :goto_0
    const-string v21, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/cyanogenmod/settings/FontDialogPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    const-string v21, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/cyanogenmod/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    :cond_4
    :goto_1
    const-string v21, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    invoke-static {v4}, Lcom/android/cyanogenmod/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    :cond_5
    :goto_2
    const-string v21, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    invoke-static {v4}, Lcom/android/cyanogenmod/settings/Utils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    :cond_6
    :goto_3
    const-string v21, "double_tap_wake_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 269
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    move-object/from16 v21, v0

    const/16 v22, 0x200

    invoke-virtual/range {v21 .. v22}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v21

    if-nez v21, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 275
    :cond_7
    const-string v21, "proximity_on_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x11200b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 278
    .local v17, "proximityCheckOnWake":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    if-eqz v17, :cond_14

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    :cond_8
    :goto_4
    const-string v21, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    .line 290
    const-string v21, "lights"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 291
    return-void

    .line 201
    .end local v17    # "proximityCheckOnWake":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getDefaultDensity()I

    move-result v7

    .line 202
    .local v7, "defaultDensity":I
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getCurrentDensity()I

    move-result v5

    .line 203
    .local v5, "currentDensity":I
    const/16 v21, 0xa

    move/from16 v0, v21

    if-lt v5, v0, :cond_a

    const/16 v21, 0x3e8

    move/from16 v0, v21

    if-lt v5, v0, :cond_b

    .line 205
    :cond_a
    move v5, v7

    .line 208
    :cond_b
    const/16 v21, 0x1e0

    move/from16 v0, v21

    if-lt v7, v0, :cond_d

    const/16 v13, 0x28

    .line 209
    .local v13, "factor":I
    :goto_5
    mul-int/lit8 v21, v13, 0x4

    sub-int v16, v7, v21

    .line 210
    .local v16, "minimumDensity":I
    const/4 v6, -0x1

    .line 211
    .local v6, "currentIndex":I
    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    .line 212
    .local v10, "densityEntries":[Ljava/lang/String;
    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v11, v0, [Ljava/lang/String;

    .line 213
    .local v11, "densityValues":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "idx":I
    :goto_6
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    .line 214
    mul-int v21, v13, v14

    add-int v19, v16, v21

    .line 215
    .local v19, "val":I
    move/from16 v0, v19

    if-ne v0, v7, :cond_e

    const v20, 0x7f09030d

    .line 219
    .local v20, "valueFormatResId":I
    :goto_7
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v14

    .line 220
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v14

    .line 221
    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    .line 222
    move v6, v14

    .line 213
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 208
    .end local v6    # "currentIndex":I
    .end local v10    # "densityEntries":[Ljava/lang/String;
    .end local v11    # "densityValues":[Ljava/lang/String;
    .end local v13    # "factor":I
    .end local v14    # "idx":I
    .end local v16    # "minimumDensity":I
    .end local v19    # "val":I
    .end local v20    # "valueFormatResId":I
    :cond_d
    const/16 v13, 0x14

    goto :goto_5

    .line 215
    .restart local v6    # "currentIndex":I
    .restart local v10    # "densityEntries":[Ljava/lang/String;
    .restart local v11    # "densityValues":[Ljava/lang/String;
    .restart local v13    # "factor":I
    .restart local v14    # "idx":I
    .restart local v16    # "minimumDensity":I
    .restart local v19    # "val":I
    :cond_e
    const v20, 0x7f09030c

    goto :goto_7

    .line 225
    .end local v19    # "val":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 227
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_10

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 230
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V

    goto/16 :goto_0

    .line 243
    .end local v5    # "currentDensity":I
    .end local v6    # "currentIndex":I
    .end local v7    # "defaultDensity":I
    .end local v10    # "densityEntries":[Ljava/lang/String;
    .end local v11    # "densityValues":[Ljava/lang/String;
    .end local v13    # "factor":I
    .end local v14    # "idx":I
    .end local v16    # "minimumDensity":I
    :cond_11
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 253
    :cond_12
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_2

    .line 263
    :cond_13
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 281
    .restart local v17    # "proximityCheckOnWake":Z
    :cond_14
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "proximity_on_wake"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 502
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c51

    new-instance v2, Lcom/android/cyanogenmod/settings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/DisplaySettings$3;-><init>(Lcom/android/cyanogenmod/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/cyanogenmod/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 493
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 498
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 656
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "key":Ljava/lang/String;
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 659
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 660
    .local v5, "value":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    int-to-long v10, v5

    invoke-direct {p0, v10, v11}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v5    # "value":I
    :cond_0
    :goto_0
    const-string v6, "lcd_density"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 668
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 669
    .restart local v5    # "value":I
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/cyanogenmod/settings/DisplaySettings;->writeLcdDensityPreference(Landroid/content/Context;I)V

    .line 670
    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 675
    .end local v5    # "value":I
    :cond_1
    :goto_1
    const-string v6, "font_size"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 676
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 678
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    .line 679
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 680
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    if-eqz v2, :cond_8

    move v6, v7

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    .end local v2    # "auto":Z
    :cond_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_4

    move-object v6, p2

    .line 684
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 685
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_gesture_enabled"

    if-eqz v5, :cond_9

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    .end local v5    # "value":Z
    :cond_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_5

    move-object v6, p2

    .line 688
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 689
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "doze_enabled"

    if-eqz v5, :cond_a

    move v6, v7

    :goto_4
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    .end local v5    # "value":Z
    :cond_5
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_7

    .line 692
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 693
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "proximity_on_wake"

    if-eqz v5, :cond_6

    move v8, v7

    :cond_6
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    .end local v5    # "value":Z
    :cond_7
    return v7

    .line 662
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 663
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v9, "could not persist screen timeout setting"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 671
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 672
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v9, "could not persist display density setting"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_8
    move v6, v8

    .line 680
    goto :goto_2

    .end local v2    # "auto":Z
    .restart local v5    # "value":Z
    :cond_9
    move v6, v8

    .line 685
    goto :goto_3

    :cond_a
    move v6, v8

    .line 689
    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 701
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    if-ne p1, v1, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->showDialog(I)V

    .line 709
    :goto_0
    return v0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mFontSizePref:Lcom/android/cyanogenmod/settings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/FontDialogPreference;->click()V

    .line 709
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 639
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 641
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_when_plugged_or_unplugged"

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 651
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 647
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 458
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 459
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 461
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120025

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 479
    .local v1, "wakeUpWhenPluggedOrUnpluggedConfig":Z
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 480
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wake_when_plugged_or_unplugged"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateState()V

    .line 486
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    .line 487
    return-void

    :cond_2
    move v2, v4

    .line 480
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 617
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 624
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "fontDesc":Ljava/lang/String;
    const v3, 0x7f090711

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/cyanogenmod/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 618
    .end local v1    # "fontDesc":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "DisplaySettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 631
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
