.class public Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    return-void
.end method

.method private initPreferences()V
    .locals 21

    .prologue
    .line 132
    const-string v18, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 134
    .local v6, "notifyOpenNetworks":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_networks_available_notification_on"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 138
    const-string v18, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    .line 140
    .local v7, "poorNetworkDetection":Landroid/preference/SwitchPreference;
    if-eqz v7, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_0
    :goto_1
    const-string v18, "wifi_scan_always_available"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    .line 153
    .local v9, "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_scan_always_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    new-instance v5, Landroid/content/Intent;

    const-string v18, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v5, "intent":Landroid/content/Intent;
    const-string v18, "com.android.certinstaller"

    const-string v19, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v18, "install_as_uid"

    const/16 v19, 0x3f2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v18, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 161
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 164
    .local v3, "context":Landroid/content/Context;
    const-string v18, "wifi_assistant"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    .line 165
    invoke-static {v3}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v10

    .line 167
    .local v10, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-nez v18, :cond_a

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    .line 174
    :cond_1
    :goto_3
    new-instance v14, Landroid/content/Intent;

    const-class v18, Lcom/android/cyanogenmod/settings/Settings$WifiP2pSettingsActivity;

    move-object/from16 v0, v18

    invoke-direct {v14, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v14, "wifiDirectIntent":Landroid/content/Intent;
    const-string v18, "wifi_direct"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 177
    .local v15, "wifiDirectPref":Landroid/preference/Preference;
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 180
    const-string v18, "wps_push_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 181
    .local v17, "wpsPushPref":Landroid/preference/Preference;
    new-instance v18, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    const-string v18, "wps_pin_entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 190
    .local v16, "wpsPinPref":Landroid/preference/Preference;
    new-instance v18, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    const-string v18, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 199
    .local v4, "frequencyPref":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v13

    .line 202
    .local v13, "value":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_b

    .line 203
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 215
    .end local v13    # "value":I
    :cond_2
    :goto_4
    const-string v18, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 216
    .local v2, "ccodePref":Landroid/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 220
    invoke-virtual {v2, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    :goto_5
    const-string v18, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 227
    .local v11, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v11, :cond_5

    .line 228
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 229
    const v18, 0x7f0c001a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 231
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_sleep_policy"

    const/16 v20, 0x2

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 235
    .local v13, "value":I
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, "stringValue":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 239
    .end local v12    # "stringValue":Ljava/lang/String;
    .end local v13    # "value":I
    :cond_5
    return-void

    .line 134
    .end local v2    # "ccodePref":Landroid/preference/ListPreference;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "poorNetworkDetection":Landroid/preference/SwitchPreference;
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v9    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    .end local v10    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v11    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v16    # "wpsPinPref":Landroid/preference/Preference;
    .end local v17    # "wpsPushPref":Landroid/preference/Preference;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 144
    .restart local v7    # "poorNetworkDetection":Landroid/preference/SwitchPreference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_watchdog_poor_network_test_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    const/16 v18, 0x0

    goto :goto_6

    .line 153
    .restart local v9    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 170
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "pref":Landroid/preference/Preference;
    .restart local v10    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 206
    .restart local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v13    # "value":I
    .restart local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v16    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v17    # "wpsPushPref":Landroid/preference/Preference;
    :cond_b
    const-string v18, "AdvancedWifiSettings"

    const-string v19, "Failed to fetch frequency band"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 209
    .end local v13    # "value":I
    :cond_c
    if-eqz v4, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 222
    .restart local v2    # "ccodePref":Landroid/preference/ListPreference;
    .local v13, "value":Ljava/lang/String;
    :cond_d
    const-string v18, "AdvancedWifiSettings"

    const-string v19, "Failed to fetch country code"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 243
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 244
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 246
    .local v4, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    .line 248
    goto :goto_0

    .line 249
    .end local v4    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/cyanogenmod/settings/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/cyanogenmod/settings/AppListSwitchPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 9

    .prologue
    const v8, 0x7f090755

    const/4 v7, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 373
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 374
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 375
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 379
    const-string v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 380
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "ipAddress":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 384
    return-void

    .line 374
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 375
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c001a

    .line 258
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 260
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 262
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 256
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0019

    goto :goto_0

    .line 259
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 100
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 93
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 126
    :pswitch_1
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 117
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 303
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "key":Ljava/lang/String;
    const-string v8, "frequency_band"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 307
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 308
    .local v6, "value":I
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 309
    invoke-direct {p0, p1, v6}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v6    # "value":I
    :cond_0
    const-string v8, "wifi_countrycode"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 345
    :try_start_1
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :cond_1
    const-string v8, "sleep_policy"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 356
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_sleep_policy"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    invoke-direct {p0, p1, v5}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_2
    move v8, v10

    .line 366
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v8

    .line 310
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f090679

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 313
    goto :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v8, "wifi_assistant"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v7

    .line 318
    .local v7, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v7, :cond_4

    .line 319
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v8, v10

    .line 320
    goto :goto_0

    .line 323
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 328
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 340
    goto :goto_0

    .line 332
    :cond_5
    const-string v8, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v8, "packageName"

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 346
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f090386

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 349
    goto :goto_0

    .line 359
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f090611

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 362
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 280
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "key":Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :goto_0
    return v2

    .line 286
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 290
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 295
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 110
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 112
    return-void
.end method
