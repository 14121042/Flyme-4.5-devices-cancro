.class public Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;
.super Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;
.source "SetupChooseLockPatternSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternSizeFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 83
    const v5, 0x7f0400ef

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 84
    .local v4, "view":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 85
    .local v2, "list":Landroid/widget/ListView;
    const v5, 0x7f100005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "title":Landroid/view/View;
    if-nez v3, :cond_0

    .line 87
    const v5, 0x7f0400f4

    invoke-virtual {p1, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "header":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 89
    const v5, 0x7f100180

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "details":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const v5, 0x7f0903c6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .end local v0    # "details":Landroid/widget/TextView;
    .end local v1    # "header":Landroid/view/View;
    :cond_0
    return-object v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "key":Ljava/lang/String;
    const-string v5, "lock_pattern_size_4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const/4 v4, 0x4

    .line 122
    .local v4, "patternSize":B
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 124
    .local v1, "isFallback":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_require_password"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 127
    .local v2, "isRequiredForDecrypt":Z
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "pattern_size"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 129
    const-string v5, "key_lock_method"

    const-string v6, "pattern"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v5, "confirm_credentials"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const-string v5, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v5, "extra_require_password"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const/high16 v5, 0x2000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->finish()V

    .line 140
    return v8

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isFallback":Z
    .end local v2    # "isRequiredForDecrypt":Z
    .end local v4    # "patternSize":B
    :cond_0
    const-string v5, "lock_pattern_size_5"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const/4 v4, 0x5

    .restart local v4    # "patternSize":B
    goto :goto_0

    .line 116
    .end local v4    # "patternSize":B
    :cond_1
    const-string v5, "lock_pattern_size_6"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const/4 v4, 0x6

    .restart local v4    # "patternSize":B
    goto :goto_0

    .line 119
    .end local v4    # "patternSize":B
    :cond_2
    const/4 v4, 0x3

    .restart local v4    # "patternSize":B
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020136

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0903c5

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;I)V

    .line 104
    return-void
.end method
