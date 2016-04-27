.class public Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DisplayRotation.java"


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method private getRotationBitmask()I
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    or-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    or-int/lit8 v0, v0, 0x2

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    or-int/lit8 v0, v0, 0x4

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    or-int/lit8 v0, v0, 0x8

    .line 148
    :cond_3
    return v0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationSwitch()V

    .line 128
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v5, 0x7f060021

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 69
    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v5, "accelerometer"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 70
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 72
    const-string v5, "display_rotation_0"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v5, "display_rotation_90"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v5, "display_rotation_180"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v5, "display_rotation_270"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accelerometer_rotation_angles"

    const/16 v9, 0xb

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, "mode":I
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    const/4 v1, 0x0

    .line 90
    .local v1, "hasRotationLock":Z
    if-eqz v1, :cond_0

    .line 92
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 93
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v5, "lockscreen_rotation"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 101
    .local v2, "lockScreenRotation":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 104
    .local v0, "canRotateLockscreen":Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_1
    return-void

    .end local v0    # "canRotateLockscreen":Z
    .end local v1    # "hasRotationLock":Z
    .end local v2    # "lockScreenRotation":Landroid/preference/SwitchPreference;
    :cond_2
    move v5, v7

    .line 81
    goto :goto_0

    :cond_3
    move v5, v7

    .line 82
    goto :goto_1

    :cond_4
    move v5, v7

    .line 83
    goto :goto_2

    :cond_5
    move v6, v7

    .line 84
    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 123
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getRotationBitmask()I

    move-result v0

    .line 162
    .local v0, "mode":I
    if-nez v0, :cond_4

    .line 163
    or-int/lit8 v0, v0, 0x1

    .line 164
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_angles"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->updateState()V

    .line 114
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method
