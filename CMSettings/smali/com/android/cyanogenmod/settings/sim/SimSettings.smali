.class public Lcom/android/cyanogenmod/settings/sim/SimSettings;
.super Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mDataDisableToastDisplayed:Z

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHardcodeDefaultMobileNetworks:Z

.field private mMobileNetworkSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mNumSims:I

.field private mNumSlots:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/android/cyanogenmod/settings/sim/SimSettings$5;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings$5;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 76
    iput v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    .line 83
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 84
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 87
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 88
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mMobileNetworkSettings:Ljava/util/List;

    .line 90
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 91
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 92
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 98
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDataDisableToastDisplayed:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHardcodeDefaultMobileNetworks:Z

    .line 158
    new-instance v0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;-><init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    new-instance v0, Lcom/android/cyanogenmod/settings/sim/SimSettings$6;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings$6;-><init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/cyanogenmod/settings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/sim/SimSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/cyanogenmod/settings/sim/SimSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/cyanogenmod/settings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/cyanogenmod/settings/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/cyanogenmod/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private createPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 194
    const v8, 0x7f06004c

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 196
    const-string v8, "sim_data"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 197
    .local v0, "dataToggle":Landroid/preference/SwitchPreference;
    new-instance v8, Lcom/android/cyanogenmod/settings/sim/SimSettings$2;

    invoke-direct {v8, p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings$2;-><init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V

    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v8, "select_primary_sub"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 207
    const-string v8, "sim_enablers"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 209
    .local v6, "simEnablers":Landroid/preference/PreferenceCategory;
    const-string v8, "mobile_network"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 212
    .local v2, "mobileNetwork":Landroid/preference/PreferenceCategory;
    new-instance v8, Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 213
    new-instance v8, Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 214
    new-instance v8, Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mMobileNetworkSettings:Ljava/util/List;

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v8, :cond_4

    .line 216
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 217
    .local v7, "sir":Landroid/telephony/SubscriptionInfo;
    iget v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    if-le v8, v12, :cond_2

    .line 218
    new-instance v5, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v8, v7, v9, v1}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    .line 220
    .local v5, "multiSimEnablerPreference":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHardcodeDefaultMobileNetworks:Z

    if-eqz v8, :cond_0

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v5, v12}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->setExplicitlyDisabled(Z)V

    .line 229
    .end local v5    # "multiSimEnablerPreference":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    iget v8, v7, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v8, v12, :cond_1

    .line 230
    iget v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    .line 231
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v3, "mobileNetworkIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.phone"

    const-string v10, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    :goto_2
    invoke-static {v3, v1, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 239
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 240
    .local v4, "mobileNetworkPref":Landroid/preference/Preference;
    const v8, 0x7f090374

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 244
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mMobileNetworkSettings:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "mobileNetworkIntent":Landroid/content/Intent;
    .end local v4    # "mobileNetworkPref":Landroid/preference/Preference;
    :cond_2
    const-string v8, "sim_enablers"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    .restart local v3    # "mobileNetworkIntent":Landroid/content/Intent;
    :cond_3
    const/4 v8, -0x1

    goto :goto_2

    .line 246
    .end local v3    # "mobileNetworkIntent":Landroid/content/Intent;
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 312
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 317
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 324
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 315
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 300
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 304
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 298
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 270
    move v0, p1

    .line 271
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/cyanogenmod/settings/sim/SimSettings$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings$3;-><init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 279
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 451
    const/4 v0, -0x1

    .line 453
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 455
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 407
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 410
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 413
    .local v3, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 416
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 417
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 419
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 437
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 410
    goto :goto_0

    .line 423
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 425
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 428
    .local v0, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 429
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 430
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 431
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 432
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 425
    goto :goto_2

    .line 431
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 434
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 366
    const/4 v0, 0x1

    .line 367
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 367
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v0
.end method

.method private listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 259
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 260
    aget v2, v1, v5

    if-lez v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCallState:[I

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v3

    aput v3, v2, v0

    .line 262
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "subId":[I
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 153
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 283
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->createDropDown(Lcom/android/cyanogenmod/settings/notification/DropDownPreference;)V

    .line 284
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->createDropDown(Lcom/android/cyanogenmod/settings/notification/DropDownPreference;)V

    .line 285
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->createDropDown(Lcom/android/cyanogenmod/settings/notification/DropDownPreference;)V

    .line 286
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 287
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCallValues()V

    .line 288
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateSmsValues()V

    .line 289
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 251
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 252
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateSimEnablers()V

    .line 253
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateMobileNetworkSettings()V

    .line 254
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 377
    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .line 378
    .local v0, "simPref":Lcom/android/cyanogenmod/settings/notification/DropDownPreference;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 380
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 381
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0, v1, v5}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 384
    :cond_0
    iget v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 385
    return-void

    .line 378
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 384
    goto :goto_1
.end method

.method private updateCellularDataPreference()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 348
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .line 349
    .local v1, "simPref":Lcom/android/cyanogenmod/settings/notification/DropDownPreference;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 351
    .local v0, "callStateIdle":Z
    iget v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 354
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDataDisableToastDisplayed:Z

    if-nez v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0904e7

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 357
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDataDisableToastDisplayed:Z

    .line 360
    :cond_0
    if-eqz v0, :cond_1

    .line 361
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDataDisableToastDisplayed:Z

    .line 363
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 351
    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 4

    .prologue
    .line 339
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .line 340
    .local v0, "simPref":Lcom/android/cyanogenmod/settings/notification/DropDownPreference;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 341
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCellularDataPreference()V

    .line 345
    return-void
.end method

.method private updateMobileNetworkSettings()V
    .locals 6

    .prologue
    .line 602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mMobileNetworkSettings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 603
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mMobileNetworkSettings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 604
    .local v2, "preference":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 606
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 608
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 610
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 602
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "subId":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "subId":I
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 616
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "preference":Landroid/preference/Preference;
    .end local v3    # "subId":I
    :cond_3
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    .line 597
    .local v1, "simEnabler":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->update()V

    .line 595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "simEnabler":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .line 329
    .local v0, "simPref":Lcom/android/cyanogenmod/settings/notification/DropDownPreference;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 331
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 332
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v0, v1, v5}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 335
    :cond_0
    iget v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 336
    return-void

    .line 329
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 335
    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/android/cyanogenmod/settings/notification/DropDownPreference;)V
    .locals 12
    .param p1, "preference"    # Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x1

    .line 474
    move-object v5, p1

    .line 475
    .local v5, "simPref":Lcom/android/cyanogenmod/settings/notification/DropDownPreference;
    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "keyPref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 477
    .local v4, "mActCount":I
    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    .line 479
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 480
    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_1
    return-void

    .line 477
    .end local v0    # "askFirst":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    .restart local v0    # "askFirst":Z
    :cond_2
    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->clearItems()V

    .line 486
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v10, :cond_4

    .line 487
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 488
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 492
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    .line 493
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090cc1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    :cond_5
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 498
    .local v7, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v7, :cond_9

    .line 499
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 500
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_7

    .line 501
    if-lez v1, :cond_8

    const-string v9, "sim_calls"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "sim_sms"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_6
    iget-boolean v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHardcodeDefaultMobileNetworks:Z

    if-eqz v9, :cond_8

    .line 498
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 505
    :cond_8
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 509
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_9
    new-instance v9, Lcom/android/cyanogenmod/settings/sim/SimSettings$4;

    invoke-direct {v9, p0, v5}, Lcom/android/cyanogenmod/settings/sim/SimSettings$4;-><init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;Lcom/android/cyanogenmod/settings/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setCallback(Lcom/android/cyanogenmod/settings/notification/DropDownPreference$Callback;)V

    goto :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 440
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 441
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 442
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 447
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 440
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string v1, "SimSettings"

    const-string v2, "on onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mHardcodeDefaultMobileNetworks:Z

    .line 123
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    .line 124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneCount:I

    .line 125
    iget v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mCallState:[I

    .line 126
    iget v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneCount:I

    new-array v1, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 127
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->listen()V

    .line 129
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPreferredDataSubscription:J

    .line 131
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->createPreferences()V

    .line 132
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateAllOptions()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 144
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 389
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onPause()V

    .line 390
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mDataDisableToastDisplayed:Z

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    .line 394
    .local v1, "simEnabler":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "simEnabler":Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 463
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    if-eqz v1, :cond_0

    .line 464
    check-cast p2, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->createEditDialog()V

    .line 470
    :goto_0
    return v0

    .line 466
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onResume()V

    .line 401
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->initLTEPreference()V

    .line 403
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateAllOptions()V

    .line 404
    return-void
.end method
