.class public Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field protected mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mDone:Z

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mPatternSize:B

.field private mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 127
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    .line 161
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 313
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    .line 316
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 566
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 567
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 570
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    if-eqz v8, :cond_0

    .line 599
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 572
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v8

    if-nez v8, :cond_3

    move v2, v6

    .line 574
    .local v2, "lockVirgin":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 577
    .local v0, "isFallback":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.fingerprint_fallback"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 580
    .local v1, "isFingerprintFallback":Z
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    .line 582
    .local v5, "wasSecureBefore":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_require_password"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 584
    .local v3, "required":Z
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 585
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 586
    iget-byte v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternSize(J)V

    .line 587
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v4, v7, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZ)V

    .line 589
    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 593
    :cond_1
    if-nez v5, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->setResult(I)V

    .line 597
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 598
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    goto :goto_0

    .end local v0    # "isFallback":Z
    .end local v1    # "isFingerprintFallback":Z
    .end local v2    # "lockVirgin":Z
    .end local v3    # "required":Z
    .end local v5    # "wasSecureBefore":Z
    :cond_3
    move v2, v7

    .line 572
    goto :goto_1
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 414
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 415
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 424
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_4

    .line 435
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_3

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_5

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 446
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 447
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    :cond_0
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 330
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    .line 331
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pattern_size"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    iput-byte v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    .line 342
    iget-byte v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 343
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    iget-byte v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v2, v2, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v2, v3, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v3, v3, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v4, v3, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 350
    const v0, 0x7f040020

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 476
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-byte v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 355
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 356
    const v4, 0x7f10004d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 357
    const v4, 0x7f100053

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 358
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 359
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 361
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-byte v5, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setLockPatternSize(B)V

    .line 362
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 364
    const v4, 0x7f100054

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 366
    const v4, 0x7f100055

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 367
    const v4, 0x7f100056

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 369
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v4, 0x7f100052

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 377
    .local v3, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    .local v0, "confirmCredentials":Z
    if-nez p2, :cond_2

    .line 383
    if-eqz v0, :cond_1

    .line 386
    sget-object v4, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 387
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 390
    .local v1, "launchedConfirmationActivity":Z
    if-nez v1, :cond_0

    .line 391
    sget-object v4, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 404
    .end local v1    # "launchedConfirmationActivity":Z
    :cond_0
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mDone:Z

    .line 405
    return-void

    .line 394
    :cond_1
    sget-object v4, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 398
    :cond_2
    const-string v4, "chosenPattern"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "patternString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 400
    iget-byte v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 402
    :cond_3
    invoke-static {}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v4

    const-string v5, "uiStage"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    return-void
.end method

.method protected updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7
    .param p1, "stage"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    const/4 v6, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 490
    .local v0, "previousStage":Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 494
    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    iget v1, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_1
    iget-object v1, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_3

    .line 509
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    :goto_2
    iget-object v1, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 517
    iget-object v1, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 520
    iget-boolean v1, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    .line 521
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 528
    :goto_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 530
    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 556
    :goto_4
    :pswitch_0
    if-eq v0, p1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 559
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 511
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 513
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 532
    :pswitch_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 535
    :pswitch_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 538
    :pswitch_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 539
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 544
    :pswitch_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 547
    :pswitch_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 548
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
