.class public Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ChooseLockPatternSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternSizeFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    .line 53
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->addPreferencesFromResource(I)V

    .line 57
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "key":Ljava/lang/String;
    const-string v5, "lock_pattern_size_4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v4, 0x4

    .line 75
    .local v4, "patternSize":B
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 77
    .local v1, "isFallback":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_require_password"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 80
    .local v2, "isRequiredForDecrypt":Z
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/cyanogenmod/settings/ChooseLockPattern;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "pattern_size"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 82
    const-string v5, "key_lock_method"

    const-string v6, "pattern"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v5, "confirm_credentials"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v5, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string v5, "extra_require_password"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const/high16 v5, 0x2000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->finish()V

    .line 92
    return v8

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isFallback":Z
    .end local v2    # "isRequiredForDecrypt":Z
    .end local v4    # "patternSize":B
    :cond_0
    const-string v5, "lock_pattern_size_5"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const/4 v4, 0x5

    .restart local v4    # "patternSize":B
    goto :goto_0

    .line 69
    .end local v4    # "patternSize":B
    :cond_1
    const-string v5, "lock_pattern_size_6"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const/4 v4, 0x6

    .restart local v4    # "patternSize":B
    goto :goto_0

    .line 72
    .end local v4    # "patternSize":B
    :cond_2
    const/4 v4, 0x3

    .restart local v4    # "patternSize":B
    goto :goto_0
.end method
