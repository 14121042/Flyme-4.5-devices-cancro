.class public Lcom/android/cyanogenmod/settings/ManageFingerprints;
.super Lcom/android/cyanogenmod/settings/SettingsActivity;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;,
        Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;,
        Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;,
        Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/cyanogenmod/settings/ManageFingerprints;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsActivity;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 452
    return-void
.end method

.method public static createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFallback"    # Z
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/cyanogenmod/settings/ManageFingerprints;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    return-object v0
.end method


# virtual methods
.method protected createFallbackIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/cyanogenmod/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string v1, ":settings:show_fragment_title"

    const v2, 0x7f09053a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    return-object v0
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const-class v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 66
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method protected hasBackToFinish()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 143
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 155
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    return-void

    .line 146
    :cond_0
    const/16 v0, 0x63

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_2

    .line 148
    :cond_1
    const-string v0, "TAG"

    const-string v1, "fallback password set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setUseFingerprint()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->finish()V

    .line 153
    const-string v0, "TAG"

    const-string v1, "fallback password NOT set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v5, 0x7f090397

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->setTitle(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "confirm_credentials"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 100
    .local v1, "confirmCredentials":Z
    if-nez v1, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string v5, "password_confirmed"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 104
    const-string v5, "waiting_for_confirmation"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->hasBackToFinish()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    if-nez v5, :cond_2

    .line 115
    new-instance v3, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-direct {v3, p0, v9}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 117
    .local v3, "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    const/16 v5, 0x64

    invoke-virtual {v3, v5, v9, v9}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 118
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 125
    .end local v3    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.fingerprint_fallback"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 127
    .local v4, "setFallback":Z
    if-eqz v4, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->createFallbackIntent()Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, "fallBackIntent":Landroid/content/Intent;
    const/16 v5, 0x63

    invoke-virtual {p0, v2, v5}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    .end local v2    # "fallBackIntent":Landroid/content/Intent;
    :cond_3
    return-void

    .end local v4    # "setFallback":Z
    :cond_4
    move v5, v7

    .line 100
    goto :goto_0

    .line 120
    .restart local v3    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    :cond_5
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->hasBackToFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->finish()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method
