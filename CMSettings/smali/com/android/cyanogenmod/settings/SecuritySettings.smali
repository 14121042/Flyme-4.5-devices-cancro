.class public Lcom/android/cyanogenmod/settings/SecuritySettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lock_to_cyanogen_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 582
    new-instance v0, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 585
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SecuritySettings;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->updateDeviceLockState()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 156
    .local v16, "root":Landroid/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 157
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 161
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 165
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_a

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    .line 167
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 168
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 170
    const v25, 0x7f060041

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 177
    :cond_1
    :goto_1
    const v25, 0x7f060044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 181
    const-string v25, "sim_lock_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 182
    .local v9, "iccLock":Landroid/preference/Preference;
    const-string v25, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 184
    .local v10, "iccLockGroup":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 185
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_to_app_enabled"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_3

    .line 237
    const-string v25, "screen_pinning_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f090d43

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    :cond_3
    const-string v25, "android.hardware.telephony"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 243
    .local v12, "isTelephony":Z
    if-eqz v12, :cond_4

    .line 244
    const-string v25, "sms_security_check_limit"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 248
    .local v20, "smsSecurityCheck":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 253
    .end local v20    # "smsSecurityCheck":I
    :cond_4
    const-string v25, "show_password"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 254
    const-string v25, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 258
    .local v24, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 259
    const-string v25, "no_config_credentials"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 260
    const-string v25, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 262
    .local v4, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v25

    if-eqz v25, :cond_13

    const v21, 0x7f090ab4

    .line 266
    .local v21, "storageSummaryRes":I
    :goto_3
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 276
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    .end local v21    # "storageSummaryRes":I
    :goto_4
    const-string v25, "device_admin_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 278
    .local v6, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v25, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 283
    const-string v25, "lock_to_cyanogen_account"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/cyanogenmod/settings/SecuritySettings;->hasKillSwitch(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

    .line 292
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v25

    if-nez v25, :cond_15

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 293
    const-string v25, "no_install_unknown_sources"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string v25, "no_install_apps"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 295
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 299
    :cond_7
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v25

    if-nez v25, :cond_8

    .line 300
    const-string v25, "app_ops_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 301
    .local v3, "appOpsSummary":Landroid/preference/Preference;
    if-eqz v6, :cond_8

    .line 302
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    .end local v3    # "appOpsSummary":Landroid/preference/Preference;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/search/Index;

    move-result-object v25

    const-class v26, Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/android/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 312
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    sget-object v25, Lcom/android/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_16

    .line 313
    sget-object v25, Lcom/android/cyanogenmod/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v25, v25, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 314
    .local v15, "pref":Landroid/preference/Preference;
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 312
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 165
    .end local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v8    # "i":I
    .end local v9    # "iccLock":Landroid/preference/Preference;
    .end local v10    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    .end local v12    # "isTelephony":Z
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v24    # "um":Landroid/os/UserManager;
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 173
    :cond_b
    const v25, 0x7f06004a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 187
    .restart local v9    # "iccLock":Landroid/preference/Preference;
    .restart local v10    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v22

    .line 188
    .local v22, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    .line 189
    .local v23, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 190
    .local v13, "numPhones":I
    const/4 v7, 0x0

    .line 192
    .local v7, "hasAnySim":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v13, :cond_11

    .line 195
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v13, v0, :cond_f

    .line 196
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v19

    .line 197
    .local v19, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v19, :cond_e

    .line 192
    .end local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_d
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 201
    .restart local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_e
    new-instance v15, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 202
    .restart local v15    # "pref":Landroid/preference/Preference;
    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 203
    const v25, 0x7f090371

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v28, v8, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-class v26, Lcom/android/cyanogenmod/settings/IccLockSettings;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v11, "intent":Landroid/content/Intent;
    const-string v25, "slot_id"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v25, "sub_display_name"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v15, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v25

    or-int v7, v7, v25

    .line 219
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v18

    .line 220
    .local v18, "simState":I
    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    if-eqz v18, :cond_10

    const/16 v25, 0x8

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    const/16 v17, 0x1

    .line 223
    .local v17, "simPresent":Z
    :goto_a
    if-nez v17, :cond_d

    .line 224
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 213
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v17    # "simPresent":Z
    .end local v18    # "simState":I
    :cond_f
    move-object v15, v9

    .restart local v15    # "pref":Landroid/preference/Preference;
    goto :goto_9

    .line 220
    .restart local v18    # "simState":I
    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    .line 228
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v18    # "simState":I
    :cond_11
    if-nez v7, :cond_12

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 230
    :cond_12
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v13, v0, :cond_2

    .line 231
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 262
    .end local v7    # "hasAnySim":Z
    .end local v8    # "i":I
    .end local v13    # "numPhones":I
    .end local v22    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v12    # "isTelephony":Z
    .restart local v24    # "um":Landroid/os/UserManager;
    :cond_13
    const v21, 0x7f090ab5

    goto/16 :goto_3

    .line 268
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    :cond_14
    const-string v25, "credentials_management"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 270
    .local v5, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v25, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    const-string v25, "credentials_install"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    const-string v25, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 292
    .end local v5    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 317
    .restart local v8    # "i":I
    :cond_16
    return-object v16
.end method

.method public static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/android/cyanogenmod/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 325
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 328
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 329
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 327
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {v2, p0}, Lcom/android/cyanogenmod/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    invoke-static {p0, v2}, Lcom/android/cyanogenmod/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 333
    .local v5, "trustAgentComponentInfo":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 337
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method public static hasCyanogenAccountType(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    const-string v5, "account"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 368
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .local v1, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 369
    .local v2, "authenticatorDescription":Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.cyanogen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    const/4 v5, 0x1

    .line 373
    .end local v2    # "authenticatorDescription":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return v5

    .line 368
    .restart local v2    # "authenticatorDescription":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "authenticatorDescription":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hasKillSwitch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string v3, "killswitch"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 353
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IKillSwitchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IKillSwitchService;

    move-result-object v1

    .line 354
    .local v1, "service":Lcom/android/internal/os/IKillSwitchService;
    if-eqz v1, :cond_0

    .line 356
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/os/IKillSwitchService;->hasKillSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->hasCyanogenAccountType(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 361
    :cond_0
    :goto_0
    return v2

    .line 357
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private hasLoggedInCyanogenAccount(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 347
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v2, "com.cyanogen"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 348
    .local v1, "accountsByType":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDeviceLocked()Z
    .locals 3

    .prologue
    .line 377
    const-string v2, "killswitch"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 378
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IKillSwitchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IKillSwitchService;

    move-result-object v1

    .line 379
    .local v1, "service":Lcom/android/internal/os/IKillSwitchService;
    if-eqz v1, :cond_0

    .line 381
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/os/IKillSwitchService;->isDeviceLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 386
    :goto_0
    return v2

    .line 382
    :catch_0
    move-exception v2

    .line 386
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 424
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static updateCyanogenDeviceLockState(Landroid/app/Fragment;ZI)V
    .locals 4
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "setCks"    # Z
    .param p2, "activityRequestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.cyanogen"

    new-instance v2, Lcom/android/cyanogenmod/settings/SecuritySettings$1;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/cyanogenmod/settings/SecuritySettings$1;-><init>(ZLandroid/app/Fragment;I)V

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/accounts/AccountManager;->editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 406
    return-void
.end method

.method private updateDeviceLockState()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockDeviceToCyanogenAccount:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/cyanogenmod/settings/SecuritySettings;->isDeviceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 473
    :cond_0
    return-void
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 5
    .param p1, "selection"    # I

    .prologue
    .line 463
    if-lez p1, :cond_0

    const v1, 0x7f0900c6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    return-void

    .line 463
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 434
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090851

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 441
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 576
    const v0, 0x7f090c6f

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 446
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 447
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 452
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 144
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 460
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 502
    const/4 v2, 0x1

    .line 503
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "key":Ljava/lang/String;
    const-string v6, "show_password"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v4, v5

    .line 505
    goto :goto_0

    .line 507
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v6, "toggle_install_applications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 508
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 510
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->warnAppInstallation()V

    .line 512
    const/4 v2, 0x0

    goto :goto_1

    .line 514
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1

    .line 516
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v6, "sms_security_check_limit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 517
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 518
    .local v3, "smsSecurityCheck":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sms_outgoing_check_max_count"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto :goto_1

    .line 521
    .end local v3    # "smsSecurityCheck":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v6, "lock_to_cyanogen_account"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 524
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/SecuritySettings;->hasLoggedInCyanogenAccount(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 525
    const/16 v5, 0x39

    invoke-static {p0, v4, v5}, Lcom/android/cyanogenmod/settings/SecuritySettings;->updateCyanogenDeviceLockState(Landroid/app/Fragment;ZI)V

    goto :goto_1

    .line 528
    :cond_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09036c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/cyanogenmod/settings/SecuritySettings$2;

    invoke-direct {v6, p0}, Lcom/android/cyanogenmod/settings/SecuritySettings$2;-><init>(Lcom/android/cyanogenmod/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 546
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 550
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09036d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/android/cyanogenmod/settings/SecuritySettings$4;

    invoke-direct {v6, p0}, Lcom/android/cyanogenmod/settings/SecuritySettings$4;-><init>(Lcom/android/cyanogenmod/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/cyanogenmod/settings/SecuritySettings$3;

    invoke-direct {v6, p0}, Lcom/android/cyanogenmod/settings/SecuritySettings$3;-><init>(Lcom/android/cyanogenmod/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 568
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 482
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 486
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 488
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SecuritySettings;->updateDeviceLockState()V

    .line 498
    return-void

    :cond_2
    move v0, v2

    .line 489
    goto :goto_0

    :cond_3
    move v1, v2

    .line 494
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method
