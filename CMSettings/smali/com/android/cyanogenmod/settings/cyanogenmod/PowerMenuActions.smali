.class public Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "PowerMenuActions.java"


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field private mAllActions:[Ljava/lang/String;

.field private mAvailableActions:[Ljava/lang/String;

.field private mBugReportPref:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mLocalUserConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockdownPref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsPref:Landroid/preference/CheckBoxPreference;

.field private mSilentPref:Landroid/preference/CheckBoxPreference;

.field private mUsersPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    return-void
.end method

.method private getUserConfig()V
    .locals 9

    .prologue
    .line 236
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_menu_actions"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "savedActions":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 242
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "defaultActions":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 245
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "defaultActions":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 249
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveUserConfig()V
    .locals 11

    .prologue
    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v5, "s":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v6, "setactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 260
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 268
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_2

    .line 270
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_menu_actions"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 276
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updatePowerMenuDialog()V

    .line 277
    return-void
.end method

.method private settingsArrayContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updatePowerMenuDialog()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "u":Landroid/content/Intent;
    const-string v1, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 283
    return-void
.end method

.method private updatePreferences()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 225
    .local v0, "bugreport":Z
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    if-eqz v0, :cond_2

    .line 228
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateUserConfig(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->saveUserConfig()V

    .line 219
    return-void

    .line 214
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f060031

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/android/internal/util/cm/PowerMenuConstants;->getAllActions()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_9

    aget-object v0, v1, v2

    .line 74
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const-string v4, "reboot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "reboot"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 81
    :cond_2
    const-string v4, "screenshot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    const-string v4, "screenshot"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 83
    :cond_3
    const-string v4, "airplane"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    const-string v4, "airplane"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 85
    :cond_4
    const-string v4, "users"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 86
    const-string v4, "users"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 87
    :cond_5
    const-string v4, "settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 88
    const-string v4, "settings"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 89
    :cond_6
    const-string v4, "lockdown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    const-string v4, "lockdown"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 91
    :cond_7
    const-string v4, "bugreport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 92
    const-string v4, "bugreport"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 93
    :cond_8
    const-string v4, "silent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    const-string v4, "silent"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 98
    .end local v0    # "action":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getUserConfig()V

    .line 99
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 161
    .local v0, "value":Z
    const-string v1, "reboot"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    .line 194
    :goto_0
    const/4 v1, 0x1

    .end local v0    # "value":Z
    :goto_1
    return v1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 165
    .restart local v0    # "value":Z
    const-string v1, "screenshot"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "value":Z
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 169
    .restart local v0    # "value":Z
    const-string v1, "airplane"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "value":Z
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 173
    .restart local v0    # "value":Z
    const-string v1, "users"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0    # "value":Z
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 176
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 177
    .restart local v0    # "value":Z
    const-string v1, "settings"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "value":Z
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 181
    .restart local v0    # "value":Z
    const-string v1, "lockdown"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "value":Z
    :cond_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 184
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 185
    .restart local v0    # "value":Z
    const-string v1, "bugreport"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "value":Z
    :cond_6
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 188
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 189
    .restart local v0    # "value":Z
    const-string v1, "silent"

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0    # "value":Z
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 105
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "reboot"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "screenshot"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    const-string v5, "airplane"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 118
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-nez v2, :cond_8

    .line 119
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    .line 130
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "settings"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    :cond_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "lockdown"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "bugreport"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 143
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "silent"

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    :cond_7
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 147
    return-void

    .line 122
    :cond_8
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_9

    move v0, v3

    .line 125
    .local v0, "enabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "users"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_9
    move v0, v4

    .line 124
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_a
    move v3, v4

    .line 125
    goto :goto_2
.end method
