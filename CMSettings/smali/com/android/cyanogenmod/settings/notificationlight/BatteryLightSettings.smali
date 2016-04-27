.class public Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mLightEnabledPref:Landroid/preference/SwitchPreference;

.field private mLowColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mPulseEnabledPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 96
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 98
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "battery_light_low_color"

    const v6, 0x10e004b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "lowColor":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 104
    .end local v1    # "lowColor":I
    :cond_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    .line 105
    const-string v5, "battery_light_medium_color"

    const v6, 0x10e004c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "mediumColor":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 110
    .end local v2    # "mediumColor":I
    :cond_1
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    .line 111
    const-string v5, "battery_light_full_color"

    const v6, 0x10e004d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "fullColor":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 115
    .end local v0    # "fullColor":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "general_section"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 62
    .local v0, "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    const-string v2, "battery_light_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Landroid/preference/SwitchPreference;

    .line 63
    const-string v2, "battery_light_pulse"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Landroid/preference/SwitchPreference;

    .line 65
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    .line 74
    const-string v2, "low_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 75
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v2, "medium_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 78
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v2, "full_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 81
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v2, "colors_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 137
    const/4 v0, 0x1

    const v1, 0x7f09002d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetToDefaults()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 180
    move-object v0, p1

    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 181
    .local v0, "lightPref":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 92
    return-void
.end method

.method protected resetColors()V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "battery_light_low_color"

    const v3, 0x10e004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const-string v2, "battery_light_medium_color"

    const v3, 0x10e004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    const-string v2, "battery_light_full_color"

    const v3, 0x10e004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 165
    return-void
.end method

.method protected resetToDefaults()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0d0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 170
    .local v0, "batteryLightEnabled":Z
    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 172
    .local v1, "batteryLightPulseEnabled":Z
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->resetColors()V

    .line 176
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
