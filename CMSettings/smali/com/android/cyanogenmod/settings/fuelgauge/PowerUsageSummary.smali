.class public Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;
    }
.end annotation


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryPluggedIn:Z

.field private mBatterySaverPref:Landroid/preference/SwitchPreference;

.field private mBatteryStatus:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

.field private mPerAppProfiles:Landroid/preference/SwitchPreference;

.field private mPerfProfileEntries:[Ljava/lang/String;

.field private mPerfProfilePref:Landroid/preference/ListPreference;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private mPerformanceProfileObserver:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStatsType:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 118
    new-instance v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 556
    new-instance v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0909e0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 409
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->setHideLabels(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 411
    return-void
.end method

.method private isBatteryPluggedIn(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 429
    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 431
    .local v0, "status":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshBatterySaverOptions()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-eqz v0, :cond_3

    const v0, 0x7f090358

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 404
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 398
    goto :goto_0

    :cond_2
    move v1, v2

    .line 399
    goto :goto_1

    .line 400
    :cond_3
    const v0, 0x7f090357

    goto :goto_2
.end method

.method private refreshStats()V
    .locals 32

    .prologue
    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v22

    .line 465
    .local v22, "stats":Landroid/os/BatteryStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats()Landroid/os/BatteryStats;

    move-result-object v10

    .line 467
    .local v10, "dockStats":Landroid/os/BatteryStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 469
    new-instance v25, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v18

    .line 475
    .local v18, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string v25, "screen.full"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 476
    .local v6, "averagePower":D
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    cmpl-double v25, v6, v26

    if-ltz v25, :cond_7

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v20

    .line 479
    .local v20, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v23

    .line 483
    .local v23, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v9

    .line 484
    .local v9, "dischargeAmount":I
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v13

    .line 485
    .local v13, "numSippers":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v13, :cond_7

    .line 486
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/os/BatterySipper;

    .line 487
    .local v21, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v28

    div-double v26, v26, v28

    int-to-double v0, v9

    move-wide/from16 v28, v0

    mul-double v16, v26, v28

    .line 489
    .local v16, "percentOfTotal":D
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->sipperCanBePruned(Lcom/android/internal/os/BatterySipper;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 490
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40ac200000000000L    # 3600.0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpg-double v25, v26, v28

    if-gez v25, :cond_2

    .line 485
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 483
    .end local v9    # "dischargeAmount":I
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v16    # "percentOfTotal":D
    .end local v21    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 493
    .restart local v9    # "dischargeAmount":I
    .restart local v12    # "i":I
    .restart local v13    # "numSippers":I
    .restart local v16    # "percentOfTotal":D
    .restart local v21    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v16

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 497
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 500
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    div-double v28, v28, v30

    cmpg-double v25, v26, v28

    if-ltz v25, :cond_0

    .line 503
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    cmpg-double v25, v16, v26

    if-ltz v25, :cond_0

    .line 506
    const-string v25, "user"

    sget-object v26, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string v25, "userdebug"

    sget-object v26, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 510
    :cond_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 513
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    cmpg-double v25, v26, v28

    if-ltz v25, :cond_0

    .line 516
    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    cmpg-double v25, v16, v26

    if-ltz v25, :cond_0

    .line 519
    const-string v25, "user"

    sget-object v26, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string v25, "userdebug"

    sget-object v26, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 523
    :cond_5
    new-instance v24, Landroid/os/UserHandle;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    .line 524
    .local v24, "userHandle":Landroid/os/UserHandle;
    new-instance v11, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 525
    .local v11, "entry":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 527
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 529
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    new-instance v19, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5, v8, v11}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;)V

    .line 532
    .local v19, "pref":Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v28

    div-double v14, v26, v28

    .line 533
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 534
    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    add-int/lit8 v25, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 536
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 537
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 538
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 540
    :cond_6
    const/4 v4, 0x1

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v25

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 547
    .end local v5    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "contentDescription":Ljava/lang/CharSequence;
    .end local v9    # "dischargeAmount":I
    .end local v11    # "entry":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v14    # "percentOfMax":D
    .end local v16    # "percentOfTotal":D
    .end local v19    # "pref":Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;
    .end local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v21    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v23    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v24    # "userHandle":Landroid/os/UserHandle;
    :cond_7
    if-nez v4, :cond_8

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 551
    :cond_8
    invoke-static {}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 552
    return-void
.end method

.method private resetStats()V
    .locals 4

    .prologue
    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0903c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 393
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method private sipperCanBePruned(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 460
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 414
    if-eqz p1, :cond_1

    .line 415
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/cyanogenmod/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    :cond_0
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    .line 420
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    .line 421
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->isBatteryPluggedIn(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    .line 422
    const/4 v2, 0x1

    .line 425
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updatePerformanceSummary()V
    .locals 8

    .prologue
    .line 436
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "value":Ljava/lang/String;
    const-string v2, ""

    .line 438
    .local v2, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v4

    .line 439
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    aget-object v2, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    return-void

    .line 444
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updatePerformanceValue()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 146
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 147
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    .line 148
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryManager:Landroid/os/BatteryManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    .line 163
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 164
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 167
    const-string v0, "pref_perf_profile"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 168
    const-string v0, "low_power"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 169
    const-string v0, "app_perf_profiles_enabled"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerAppProfiles:Landroid/preference/SwitchPreference;

    .line 170
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-string v0, "pref_perf_profile"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 172
    const-string v0, "app_perf_profiles_enabled"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 173
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 174
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerAppProfiles:Landroid/preference/SwitchPreference;

    .line 186
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;-><init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 187
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "low_power"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 178
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 179
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 180
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 183
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 292
    const/4 v5, 0x2

    const v6, 0x7f090a37

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x10803fe

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x72

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 295
    .local v3, "refresh":Landroid/view/MenuItem;
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 297
    const/4 v5, 0x3

    const v6, 0x7f0903c0

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020038

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x64

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    .line 300
    .local v4, "reset":Landroid/view/MenuItem;
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    const/4 v5, 0x4

    const v6, 0x7f090356

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 305
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c67

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    const v5, 0x7f090c60

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 310
    .local v1, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/cyanogenmod/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 312
    .end local v1    # "help":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 240
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 242
    invoke-static {}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 244
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v13, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    move v8, v9

    .line 374
    :goto_0
    return v8

    .line 318
    :pswitch_0
    iget v10, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v10, :cond_0

    .line 319
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 323
    :goto_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 321
    :cond_0
    iput v9, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 326
    :pswitch_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->resetStats()V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 330
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 331
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 334
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 336
    .local v4, "res":Landroid/content/res/Resources;
    const v10, 0x10e0047

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 338
    .local v1, "defWarnLevel":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_power_trigger_level"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 341
    .local v7, "value":I
    const/4 v5, -0x1

    .line 342
    .local v5, "selectedIndex":I
    const v10, 0x7f0c0066

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 343
    .local v3, "intVals":[I
    array-length v10, v3

    new-array v6, v10, [Ljava/lang/String;

    .line 344
    .local v6, "strVals":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v10, v3

    if-ge v2, v10, :cond_3

    .line 345
    aget v10, v3, v2

    if-ne v10, v7, :cond_1

    .line 346
    move v5, v2

    .line 348
    :cond_1
    aget v10, v3, v2

    if-lez v10, :cond_2

    aget v10, v3, v2

    if-ge v10, v13, :cond_2

    .line 349
    const v10, 0x7f090a3d

    new-array v11, v8, [Ljava/lang/Object;

    aget v12, v3, v2

    invoke-static {v12}, Lcom/android/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v4, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 344
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 352
    :cond_2
    const v10, 0x7f090a3c

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    goto :goto_3

    .line 357
    :cond_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f090a3b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v10, p0, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;[I)V

    invoke-virtual {v9, v6, v5, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0901d4

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 370
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 221
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 225
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 275
    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerProfile(Ljava/lang/String;)Z

    .line 278
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    .line 279
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 248
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "stats"

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_dock_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeDockStatsHistoryInFile(Ljava/lang/String;)V

    .line 254
    const-string v1, "dock_stats"

    const-string v3, "tmp_dock_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    const-string v1, "broadcast"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 259
    .local v0, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0909f9

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 261
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 270
    .end local v0    # "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v1

    .line 263
    :cond_1
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_2

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v8, p2

    .line 266
    check-cast v8, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;

    .line 267
    .local v8, "pgp":Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v8}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;

    move-result-object v7

    .line 268
    .local v7, "entry":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v7, v5}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/cyanogenmod/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;Z)V

    .line 270
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 197
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tmp_bat_history.bin"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 201
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 207
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 209
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "performance_profile"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V

    .line 216
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 192
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 193
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    return-void
.end method
