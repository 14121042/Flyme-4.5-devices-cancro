.class public Lcom/android/cyanogenmod/settings/WirelessSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/cyanogenmod/settings/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSmsApplicationPreference:Lcom/android/cyanogenmod/settings/AppListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/android/cyanogenmod/settings/WirelessSettings$2;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/WirelessSettings$2;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/cyanogenmod/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method private initSmsApplicationSetting()V
    .locals 10

    .prologue
    .line 191
    const-string v8, "initSmsApplicationSetting:"

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 196
    .local v7, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    .line 197
    .local v1, "count":I
    new-array v5, v1, [Ljava/lang/String;

    .line 198
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 200
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v3

    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 202
    goto :goto_0

    .line 203
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v2, 0x0

    .line 204
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 205
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/cyanogenmod/settings/AppListPreference;

    invoke-virtual {v8, v5, v2}, Lcom/android/cyanogenmod/settings/AppListPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 237
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 475
    const v0, 0x7f090c64

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 464
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 465
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 467
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 470
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super/range {p0 .. p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    const-string v23, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 257
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 259
    const-string v23, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 260
    const-string v23, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 262
    const-string v23, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 264
    const v23, 0x7f060067

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 266
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 267
    .local v13, "myUserId":I
    if-eqz v13, :cond_19

    const/4 v9, 0x1

    .line 268
    .local v9, "isSecondaryUser":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    .line 270
    .local v8, "isRestrictedUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 271
    .local v2, "activity":Landroid/app/Activity;
    const-string v23, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 272
    const-string v23, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    .line 273
    .local v14, "nfc":Landroid/preference/SwitchPreference;
    const-string v23, "nfc_category_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 276
    .local v15, "nfcCategory":Landroid/preference/PreferenceCategory;
    const-string v23, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 277
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v23, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    .line 278
    .local v17, "nsd":Landroid/preference/SwitchPreference;
    const-string v23, "nfc_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    .line 280
    .local v16, "nfcPayment":Landroid/preference/PreferenceScreen;
    new-instance v23, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

    .line 281
    new-instance v23, Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v14, v3, v1}, Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    .line 283
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/cyanogenmod/settings/AppListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/cyanogenmod/settings/AppListPreference;

    .line 285
    if-nez v8, :cond_1

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/Utils;->canUserMakeCallsSms(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 286
    :cond_1
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 293
    :goto_1
    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_toggleable_radios"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 300
    .local v22, "toggleable":Ljava/lang/String;
    if-nez v9, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x112006e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_1b

    const/4 v10, 0x1

    .line 302
    .local v10, "isWimaxEnabled":Z
    :goto_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_mobile_networks"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 304
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 305
    .local v21, "root":Landroid/preference/PreferenceScreen;
    const-string v23, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 306
    .local v20, "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v21    # "root":Landroid/preference/PreferenceScreen;
    :cond_4
    :goto_3
    if-eqz v22, :cond_5

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 317
    :cond_5
    const-string v23, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 320
    :cond_6
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_vpn"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 321
    :cond_7
    const-string v23, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 325
    :cond_8
    if-eqz v22, :cond_9

    const-string v23, "bluetooth"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 330
    :cond_9
    if-eqz v22, :cond_a

    const-string v23, "nfc"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 331
    :cond_a
    const-string v23, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 332
    const-string v23, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 333
    const-string v23, "nfc_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    const-string v24, "toggle_airplane"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 337
    :cond_b
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v23, v0

    if-nez v23, :cond_1e

    .line 339
    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    :cond_c
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    .line 350
    :cond_d
    :goto_4
    if-nez v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_mobile_networks"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 352
    :cond_e
    const-string v23, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 353
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 357
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d0006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 359
    .local v7, "isMobilePlanEnabled":Z
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 360
    :cond_10
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 361
    .local v19, "pref":Landroid/preference/Preference;
    if-eqz v19, :cond_11

    .line 362
    const-string v23, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 367
    .end local v19    # "pref":Landroid/preference/Preference;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->isSmsSupported()Z

    move-result v23

    if-nez v23, :cond_12

    .line 368
    const-string v23, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 372
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const-string v24, "android.hardware.type.television"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 373
    const-string v23, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 377
    :cond_13
    const-string v23, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 378
    .local v12, "mGlobalProxy":Landroid/preference/Preference;
    const-string v23, "device_policy"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 381
    .local v11, "mDPM":Landroid/app/admin/DevicePolicyManager;
    if-eqz v12, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_14
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v23

    if-nez v23, :cond_1f

    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    const-string v23, "connectivity"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 387
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v9, :cond_15

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_tethering"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 389
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v24, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1120077

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 403
    .local v6, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v6, :cond_16

    .line 404
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const-string v24, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 406
    const/4 v6, 0x0

    .line 412
    :cond_16
    :goto_7
    if-nez v9, :cond_17

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_cell_broadcasts"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 414
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 415
    .restart local v21    # "root":Landroid/preference/PreferenceScreen;
    const-string v23, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 416
    .restart local v20    # "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v21    # "root":Landroid/preference/PreferenceScreen;
    :cond_18
    return-void

    .line 267
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "isCellBroadcastAppLinkEnabled":Z
    .end local v7    # "isMobilePlanEnabled":Z
    .end local v8    # "isRestrictedUser":Z
    .end local v9    # "isSecondaryUser":Z
    .end local v10    # "isWimaxEnabled":Z
    .end local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v14    # "nfc":Landroid/preference/SwitchPreference;
    .end local v15    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .end local v16    # "nfcPayment":Landroid/preference/PreferenceScreen;
    .end local v17    # "nsd":Landroid/preference/SwitchPreference;
    .end local v22    # "toggleable":Ljava/lang/String;
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v8    # "isRestrictedUser":Z
    .restart local v9    # "isSecondaryUser":Z
    .restart local v14    # "nfc":Landroid/preference/SwitchPreference;
    .restart local v15    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .restart local v16    # "nfcPayment":Landroid/preference/PreferenceScreen;
    .restart local v17    # "nsd":Landroid/preference/SwitchPreference;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/cyanogenmod/settings/AppListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/AppListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->initSmsApplicationSetting()V

    goto/16 :goto_1

    .line 300
    .restart local v22    # "toggleable":Ljava/lang/String;
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 308
    .restart local v10    # "isWimaxEnabled":Z
    :cond_1c
    if-eqz v22, :cond_1d

    const-string v23, "wimax"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    if-eqz v10, :cond_4

    .line 310
    :cond_1d
    const-string v23, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 311
    .restart local v20    # "ps":Landroid/preference/Preference;
    const-string v23, "toggle_airplane"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 341
    .end local v20    # "ps":Landroid/preference/Preference;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const-string v24, "android.hardware.nfc.hce"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 343
    if-eqz v15, :cond_d

    if-eqz v16, :cond_d

    .line 344
    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 382
    .restart local v7    # "isMobilePlanEnabled":Z
    .restart local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 391
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_20
    const-string v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 392
    .local v18, "p":Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_21

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_21
    const/16 v23, 0x0

    goto :goto_8

    .line 409
    .end local v18    # "p":Landroid/preference/Preference;
    .restart local v6    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 410
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/cyanogenmod/settings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/WirelessSettings$1;-><init>(Lcom/android/cyanogenmod/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f0907e9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 126
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 127
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 130
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 131
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 133
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 138
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 188
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 146
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 148
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v11}, Lcom/android/cyanogenmod/settings/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 155
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    const v8, 0x7f0907e8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 169
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 177
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 179
    const v8, 0x7f0907ea

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 182
    :cond_7
    const v8, 0x7f0907eb

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 453
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;->pause()V

    .line 454
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;->pause()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/android/cyanogenmod/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/android/cyanogenmod/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/NsdEnabler;->pause()V

    .line 460
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/cyanogenmod/settings/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 481
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    :goto_0
    return v0

    .line 117
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 121
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 431
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/AirplaneModeEnabler;->resume()V

    .line 432
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNfcEnabler:Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/nfc/NfcEnabler;->resume()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/android/cyanogenmod/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mNsdEnabler:Lcom/android/cyanogenmod/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/NsdEnabler;->resume()V

    .line 438
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 424
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 425
    return-void
.end method
