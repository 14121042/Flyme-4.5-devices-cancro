.class Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;
.super Landroid/service/fingerprint/FingerprintManagerReceiver;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManagerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollResult(II)V
    .locals 2
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 555
    invoke-super {p0, p1, p2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    .line 558
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    add-int/lit8 v1, p2, 0x1

    # setter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$202(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    sub-int/2addr v1, p2

    # setter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$302(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 562
    if-nez p2, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    # setter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$302(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 564
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 577
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$100(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 567
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->WrongSensor:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->dismissErrorDialogIfShowing()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$400(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$300(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    .line 572
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->HelpScreen:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onError(I)V

    .line 582
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$500(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 586
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$500(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 587
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$600(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 588
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 589
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getStatsCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeout"

    invoke-static {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendFingerprintEnrollmentFailedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
