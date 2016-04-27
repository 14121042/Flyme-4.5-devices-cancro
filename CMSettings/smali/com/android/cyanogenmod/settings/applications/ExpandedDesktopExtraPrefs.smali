.class public Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ExpandedDesktopExtraPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;
    }
.end annotation


# instance fields
.field private mExpandedDesktopStyle:I

.field private mExpandedDesktopStylePref:Landroid/preference/ListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;-><init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->updateExpandedDesktopStyle()V

    return-void
.end method

.method private getDesktopSummary(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 101
    const v0, 0x7f0902f8

    :goto_0
    return v0

    .line 96
    :pswitch_0
    const v0, 0x7f0902f6

    goto :goto_0

    .line 98
    :pswitch_1
    const v0, 0x7f0902f7

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getExpandedDesktopStyle()I
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;-><init>()V

    .line 46
    .local v0, "expandedDesktopExtraPrefs":Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;
    return-object v0
.end method

.method private updateExpandedDesktopStyle()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getExpandedDesktopStyle()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    .line 85
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 86
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getDesktopSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 89
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->writeValue(Ljava/lang/String;)V

    .line 90
    const-string v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->writeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public createPreferences()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "expanded_desktop_style"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->updateExpandedDesktopStyle()V

    .line 78
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->addPreferencesFromResource(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getExpandedDesktopStyle()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    .line 59
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->createPreferences()V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->register(Z)V

    .line 71
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/WindowManagerPolicyControl;->saveStyleToSettings(Landroid/content/Context;I)V

    .line 115
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->register(Z)V

    .line 66
    return-void
.end method
