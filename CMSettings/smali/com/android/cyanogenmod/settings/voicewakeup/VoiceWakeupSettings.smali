.class public Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "VoiceWakeupSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# static fields
.field private static final VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

.field private static final VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field private mDefaultActivityString:Ljava/lang/String;

.field private mLaunchIntentString:Ljava/lang/String;

.field private mPickShortcutPreference:Landroid/preference/Preference;

.field private mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

.field private mRetrainPreference:Landroid/preference/Preference;

.field private mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.cyanogenmod.voicewakeup"

    const-string v2, "com.cyanogenmod.voicewakeup.VoiceTrainingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.cyanogenmod.voicewakeup"

    const-string v2, "com.cyanogenmod.voicewakeup.VoiceWakeupEngine"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private restartService()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    return-void
.end method

.method private retrain()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "retrain":Landroid/content/Intent;
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    sget-object v1, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "shortcutName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 169
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const-string v1, ""

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->addPreferencesFromResource(I)V

    .line 95
    const-string v0, "retrain"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    .line 96
    const-string v0, "voice_wakeup_launch_intent"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    .line 97
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    .line 98
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 115
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_launch_intent"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 198
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    if-eqz p1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->restartService()V

    .line 209
    :cond_1
    return-void

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 130
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 148
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->retrain()V

    .line 162
    :goto_0
    return v3

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, "activity":Landroid/app/Activity;
    new-array v2, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 156
    .local v2, "names":[Ljava/lang/String;
    new-array v1, v3, [Landroid/content/Intent$ShortcutIconResource;

    const v4, 0x7f0200c7

    invoke-static {v0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    aput-object v4, v1, v5

    .line 159
    .local v1, "icons":[Landroid/content/Intent$ShortcutIconResource;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getId()I

    move-result v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    goto :goto_0

    .line 162
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "icons":[Landroid/content/Intent$ShortcutIconResource;
    .end local v2    # "names":[Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 143
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 104
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 105
    .local v1, "activity":Lcom/android/cyanogenmod/settings/SettingsActivity;
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v2

    const-string v3, "voice_wakeup"

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 107
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "isApplication"    # Z

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/voicewakeup/VoiceWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_launch_intent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    return-void
.end method
