.class public Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;


# instance fields
.field private mAddProfileFab:Landroid/view/View;

.field mContainer:Landroid/view/ViewGroup;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    .line 79
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$1;-><init>(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->addProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method private addProfile()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "new_profile_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v1, "Profile"

    new-instance v4, Lcyanogenmod/app/Profile;

    const v5, 0x7f090029

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 215
    .local v0, "pa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/android/cyanogenmod/settings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 217
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d4

    new-instance v2, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$3;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$3;-><init>(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 308
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 309
    .local v1, "selectedUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1    # "selectedUuid":Ljava/util/UUID;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateProfilesEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mEnabled:Z

    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 246
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 252
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 242
    goto :goto_0

    .line 246
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->refreshList()V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 144
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->addPreferencesFromResource(I)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 187
    const/4 v0, 0x1

    const v1, 0x7f09002d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    const/4 v0, 0x2

    const v1, 0x7f0901e6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 182
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "profile_state"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v1, "u":Landroid/content/Intent;
    const-string v2, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 267
    return-void

    .line 257
    .end local v1    # "u":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->resetAll()V

    move v0, v6

    .line 200
    goto :goto_0

    .line 202
    :pswitch_1
    const-class v0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901e6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 204
    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 299
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 300
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->setSelectedProfile(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->refreshList()V

    .line 303
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 171
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 172
    .local v1, "activity":Lcom/android/cyanogenmod/settings/SettingsActivity;
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v2

    const-string v3, "system_profiles_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/cyanogenmod/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 174
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 116
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040059

    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "footer":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 120
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005c

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v5, v6, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f1000f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    .local v0, "emptyTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040061

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, "fab":Landroid/view/View;
    const v5, 0x7f100102

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    .line 131
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    new-instance v6, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$2;

    invoke-direct {v6, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings$2;-><init>(Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public refreshList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 271
    .local v4, "plist":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 274
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v9}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v6

    .line 275
    .local v6, "prof":Lcyanogenmod/app/Profile;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "selectedKey":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v9}, Lcyanogenmod/app/ProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v1

    .local v1, "arr$":[Lcyanogenmod/app/Profile;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v1, v2

    .line 278
    .local v7, "profile":Lcyanogenmod/app/Profile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "Profile"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    const-string v9, "new_profile_mode"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    new-instance v5, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;

    invoke-direct {v5, p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;-><init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 283
    .local v5, "ppref":Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;
    invoke-virtual {v7}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v7}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v5, v11}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setPersistent(Z)V

    .line 286
    invoke-virtual {v5, p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    invoke-virtual {v5, v10}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setSelectable(Z)V

    .line 288
    invoke-virtual {v5, v10}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setEnabled(Z)V

    .line 290
    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 291
    invoke-virtual {v5, v10}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 294
    :cond_0
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "arr$":[Lcyanogenmod/app/Profile;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "ppref":Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;
    .end local v7    # "profile":Lcyanogenmod/app/Profile;
    .end local v8    # "selectedKey":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 296
    .restart local v1    # "arr$":[Lcyanogenmod/app/Profile;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v8    # "selectedKey":Ljava/lang/String;
    :cond_2
    return-void
.end method
