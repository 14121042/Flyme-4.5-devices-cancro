.class public Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;
.super Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
.source "SetupEnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEnrollFingerprintFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStatsCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "fingerprint_enrollment_oobe"

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->onNavigateBack()V

    .line 169
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 173
    sget-object v1, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 181
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->onNavigateNext()V

    .line 183
    :goto_0
    return-void

    .line 175
    :pswitch_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setUseFingerprint()V

    .line 177
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getEnrollmentActivity()Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    move-result-object v0

    .line 142
    .local v0, "enrollmentActivity":Lcom/android/cyanogenmod/settings/EnrollFingerprint;
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->getSetupBar()Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    .line 147
    .local v1, "setupBar":Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    sget-object v2, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq p1, v2, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0904ce

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 152
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
