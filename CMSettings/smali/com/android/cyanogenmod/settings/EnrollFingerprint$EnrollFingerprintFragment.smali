.class public Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
.super Landroid/app/Fragment;
.source "EnrollFingerprint.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/EnrollFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnrollFingerprintFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;,
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;,
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;,
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;,
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
    }
.end annotation


# instance fields
.field private mCompletedCheckmark:Landroid/view/View;

.field private mConsecutiveErrorCount:I

.field private mCurrentEnrollmentStep:I

.field private mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

.field private mErrorTitles:[Ljava/lang/String;

.field private mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private mFpM:Landroid/service/fingerprint/FingerprintManager;

.field private mInfoGraphic:Landroid/widget/ImageView;

.field private mInstructions:Landroid/widget/TextView;

.field private mNumEnrollmentSteps:I

.field private mProcessingProgress:Landroid/widget/ProgressBar;

.field private mScanSuccessTextIndex:I

.field private mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

.field private mStepsCompleted:Landroid/widget/TextView;

.field private mSuccessfulScanTitles:[Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field protected mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field private mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 164
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 169
    iput v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    .line 170
    iput v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 524
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$1;-><init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;

    .line 535
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$2;-><init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    .line 552
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$3;-><init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->showWrongSensorDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->dismissErrorDialogIfShowing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V

    return-void
.end method

.method private cancelEnrollmentStepTimeout()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method private dismissErrorDialogIfShowing()V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 519
    .local v0, "prev":Landroid/app/Fragment;
    instance-of v1, v0, Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Landroid/app/DialogFragment;

    .end local v0    # "prev":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 522
    :cond_0
    return-void
.end method

.method private showFailedEnrollmentDialog()V
    .locals 3

    .prologue
    .line 513
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->newInstance(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;)Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;

    move-result-object v0

    .line 514
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private showWrongSensorDialog()V
    .locals 3

    .prologue
    .line 508
    invoke-static {}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;->newInstance()Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;

    move-result-object v0

    .line 509
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private startEnrollmentStepTimeout()V
    .locals 4

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 549
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    return-void
.end method


# virtual methods
.method protected getEnrollmentActivity()Lcom/android/cyanogenmod/settings/EnrollFingerprint;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    return-object v0
.end method

.method protected getStatsCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string v0, "fingerprint_enrollment_settings"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->setFragmentBarListener(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    .line 289
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    const v0, 0x7f040062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 322
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 323
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 324
    return-void
.end method

.method public onNavigateBack()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getStatsCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceled"

    invoke-static {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendFingerprintEnrollmentFailedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 342
    :pswitch_1
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigateNext()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    return-void

    .line 354
    :pswitch_1
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 361
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 328
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 300
    const v0, 0x7f100005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f100104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f100106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mInstructions:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f100109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mInfoGraphic:Landroid/widget/ImageView;

    .line 304
    const v0, 0x7f100105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    .line 305
    const v0, 0x7f100108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    .line 306
    const v0, 0x7f100107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    .line 309
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 314
    return-void
.end method

.method protected updateStage(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V
    .locals 13
    .param p1, "stage"    # Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 376
    .local v4, "previousStage":Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 378
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget v9, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->titleMessage:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 379
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mInstructions:Landroid/widget/TextView;

    iget v9, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->instructionMessage:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mInfoGraphic:Landroid/widget/ImageView;

    iget v9, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->infoGraphic:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    move-result-object v0

    .line 382
    .local v0, "activity":Lcom/android/cyanogenmod/settings/EnrollFingerprint;
    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->getSetupBar()Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v5

    .line 388
    .local v5, "setupBar":Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    iget-object v8, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->backMode:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    iget-boolean v8, v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->enabled:Z

    if-eqz v8, :cond_5

    .line 389
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    .line 390
    .local v1, "backButton":Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    iget-object v8, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->backMode:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    iget v8, v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->text:I

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    .line 396
    .end local v1    # "backButton":Landroid/widget/Button;
    :goto_1
    iget-object v8, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->nextMode:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    iget-boolean v8, v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->enabled:Z

    if-eqz v8, :cond_6

    .line 397
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 398
    .local v3, "nextButton":Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    iget-object v8, p1, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->nextMode:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    iget v8, v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->text:I

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(I)V

    .line 404
    .end local v3    # "nextButton":Landroid/widget/Button;
    :goto_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v9, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v9, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v8, v9, :cond_7

    .line 405
    :cond_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    .line 410
    :goto_3
    sget-object v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    const/4 v6, 0x0

    .line 431
    .local v6, "stepPercentage":F
    :goto_4
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    float-to-int v9, v6

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setProgressAnimated(I)V

    .line 432
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    .line 434
    sget-object v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v4, v8, :cond_3

    .line 435
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 436
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 438
    :cond_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const-string v9, "%d/%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_4

    .line 444
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    array-length v9, v9

    rem-int v7, v8, v9

    .line 445
    .local v7, "titleIdx":I
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .end local v7    # "titleIdx":I
    :cond_4
    sget-object v8, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v4, v8, :cond_9

    .line 450
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    invoke-virtual {v8, v9}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    .line 451
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    const-wide/32 v10, 0x927c0

    invoke-virtual {v8, v10, v11}, Landroid/service/fingerprint/FingerprintManager;->enroll(J)V

    .line 452
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 453
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V

    goto/16 :goto_0

    .line 393
    .end local v6    # "stepPercentage":F
    :cond_5
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 401
    :cond_6
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 407
    :cond_7
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 412
    :pswitch_1
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setProgress(I)V

    .line 415
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 416
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    .line 417
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    goto/16 :goto_0

    .line 420
    :pswitch_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const-string v9, "%d/%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :pswitch_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 429
    :cond_8
    const/high16 v8, 0x42c80000    # 100.0f

    iget v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    int-to-float v9, v9

    div-float v6, v8, v9

    goto/16 :goto_4

    .line 455
    .restart local v6    # "stepPercentage":F
    :cond_9
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 456
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    const v9, 0x7f0903b2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 458
    :cond_a
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 460
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    const v9, 0x7f0903b3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 464
    .end local v6    # "stepPercentage":F
    :pswitch_4
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 465
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    iget v10, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    array-length v11, v11

    rem-int/2addr v10, v11

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 467
    iget v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 468
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 469
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 470
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 471
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V

    .line 472
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getStatsCategory()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bad_scan"

    invoke-static {v8, v9, v10}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendFingerprintEnrollmentFailedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :pswitch_5
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    .line 478
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 479
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->setProgress(I)V

    .line 480
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const v9, 0x7f0903ac

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 482
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 486
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    .line 487
    .local v2, "enrolled":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v2, :cond_b

    const/4 v8, 0x5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_b

    .line 490
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    :cond_b
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;->getStatsCategory()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendFingerprintEnrollmentSuccessEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
