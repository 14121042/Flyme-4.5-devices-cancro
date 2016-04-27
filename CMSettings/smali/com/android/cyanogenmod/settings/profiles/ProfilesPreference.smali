.class public Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ProfilesPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

.field private mProfilesPref:Landroid/view/View;

.field private mProfilesSettingsButton:Landroid/widget/ImageView;

.field private final mSettingsBundle:Landroid/os/Bundle;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
    .param p2, "settingsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a0042

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const v0, 0x7f0400af

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setLayoutResource(I)V

    .line 47
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setWidgetLayoutResource(I)V

    .line 48
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

    .line 49
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method private disablePreferenceViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    :cond_1
    return-void
.end method

.method private startProfileConfigActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 134
    .local v0, "pa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    const v3, 0x7f090038

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 136
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    .line 109
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    .line 124
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v1, :cond_4

    move-object v2, p0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    if-nez v1, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .end local v1    # "enabled":Z
    :cond_3
    return-void

    .line 124
    .restart local v1    # "enabled":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 56
    const v0, 0x7f1001b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f1001b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    .line 59
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    .line 60
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->updatePreferenceViews()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->startProfileConfigActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->updatePreferenceViews()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/ProfilesPreference;->disablePreferenceViews()V

    goto :goto_0
.end method
