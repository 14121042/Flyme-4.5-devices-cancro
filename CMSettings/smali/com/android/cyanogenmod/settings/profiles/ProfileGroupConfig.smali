.class public Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ProfileGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LIGHTSMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGERMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGTONE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDMODE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDTONE:Ljava/lang/CharSequence;

.field private static final KEY_VIBRATEMODE:Ljava/lang/CharSequence;


# instance fields
.field private mLightsMode:Landroid/preference/ListPreference;

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileGroup:Lcyanogenmod/app/ProfileGroup;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

.field private mRingerMode:Landroid/preference/ListPreference;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

.field private mVibrateMode:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "sound_mode"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    .line 40
    const-string v0, "vibrate_mode"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    .line 42
    const-string v0, "lights_mode"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "ringer_mode"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    .line 46
    const-string v0, "soundtone"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    .line 48
    const-string v0, "ringtone"

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 123
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f06003a

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    .line 77
    const-string v2, "ProfileGroup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 79
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 80
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    .line 82
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    .line 83
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    .line 84
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    .line 85
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    .line 86
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    .line 87
    sget-object v2, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    .line 89
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->updateState()V

    .line 101
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 145
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->updateState()V

    .line 146
    const/4 v1, 0x1

    return v1

    .line 129
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 131
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 133
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 135
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_5

    .line 136
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_0

    .line 138
    .end local v0    # "uri":Landroid/net/Uri;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/cyanogenmod/settings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_0

    .line 139
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    goto :goto_0
.end method
