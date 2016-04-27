.class public Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBlacklist:Landroid/preference/PreferenceScreen;

.field private mWhisperPush:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->isWhisperPushOriginalOK(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->isWhisperPushUpdated(Landroid/content/pm/PackageManager;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isWhisperPushOriginalOK(Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_0
    const-string v3, "org.whispersystems.whisperpush"

    const/16 v4, 0x1000

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 120
    const/4 v2, 0x1

    .line 126
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 122
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "PrivacySettings"

    const-string v4, "WhisperPush package present, but not system app"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static isWhisperPushUpdated(Landroid/content/pm/PackageManager;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v2, "org.whispersystems.whisperpush2"

    invoke-static {p1, v2}, Lcom/android/cyanogenmod/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return v1

    .line 102
    :cond_0
    const-string v2, "android.permission.INTERCEPT_SMS"

    const-string v3, "org.whispersystems.whisperpush2"

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 106
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const-string v2, "PrivacySettings"

    const-string v3, "WhisperPush2 package present, but missing required permission!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBlacklistSummary()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v5, 0x7f060038

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 60
    const-string v5, "blacklist"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    .line 61
    const-string v5, "whisperpush"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    .line 64
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isUserOwner()Z

    move-result v2

    .line 67
    .local v2, "isOwner":Z
    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 69
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v5, "cmstats"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v5, "android.hardware.telephony"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_3

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 76
    .restart local v4    # "root":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_0
    return-void

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->isWhisperPushUpdated(Landroid/content/pm/PackageManager;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    .local v0, "component":Landroid/content/ComponentName;
    const-string v5, "org.whispersystems.whisperpush2"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 87
    const-string v5, "PrivacySettings"

    const-string v6, "Using WhisperPush2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->isWhisperPushOriginalOK(Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;->updateBlacklistSummary()V

    .line 134
    return-void
.end method
