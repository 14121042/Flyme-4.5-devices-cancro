.class public Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

.field private mDone:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 108
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 109
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 110
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 111
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 112
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 113
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 114
    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 116
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 118
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 119
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 132
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 488
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 493
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 510
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 512
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_3

    if-lez v1, :cond_3

    .line 513
    iget v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 514
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f09055c

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 532
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 533
    return-void

    .line 514
    :cond_0
    const v4, 0x7f09055d

    goto :goto_0

    .line 519
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 521
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 524
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f09055e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 525
    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 529
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 530
    if-lez v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_1

    .line 529
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v4, v6

    .line 530
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f09055c

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 416
    :goto_1
    return-object v12

    .line 325
    :cond_0
    const v12, 0x7f09055d

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    const v12, 0x7f090560

    :goto_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const v12, 0x7f090561

    goto :goto_2

    .line 334
    :cond_3
    const/4 v5, 0x0

    .line 335
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 336
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 337
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 338
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 339
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 340
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 343
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 344
    :cond_4
    const v12, 0x7f090564

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 346
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 347
    add-int/lit8 v8, v8, 0x1

    .line 348
    add-int/lit8 v7, v7, 0x1

    .line 340
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 349
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 351
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 352
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 353
    add-int/lit8 v5, v5, 0x1

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 356
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 360
    .end local v3    # "c":C
    :cond_9
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_d

    .line 362
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 365
    :cond_b
    const v12, 0x7f090562

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 368
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 369
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_18

    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 371
    const v12, 0x7f090569

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 373
    .end local v9    # "sequence":I
    :cond_d
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    .line 374
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 378
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0008

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 382
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 386
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0007

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 390
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0009

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 394
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e000a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 400
    :cond_13
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_15

    const/4 v1, 0x1

    .line 402
    .local v1, "alphabetic":Z
    :goto_5
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v2, 0x1

    .line 404
    .local v2, "alphanumeric":Z
    :goto_6
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 405
    const v12, 0x7f090565

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 400
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 402
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 407
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 408
    const v12, 0x7f090566

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 411
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 412
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f090568

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_19
    const v12, 0x7f090563

    goto :goto_7

    .line 416
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 538
    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 541
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 545
    return-void
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 420
    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v7, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "pin":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_3

    .line 428
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    if-nez v0, :cond_2

    .line 430
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 431
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    sget-object v7, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 462
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 463
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 434
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 435
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 438
    .local v1, "isFallback":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.fingerprint_fallback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 441
    .local v2, "isFingerprintFallback":Z
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    .line 442
    .local v6, "wasSecureBefore":Z
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_require_password"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 445
    .local v4, "required":Z
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 446
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v7, v3, v8, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 448
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Activity;->setResult(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 450
    iput-boolean v10, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 451
    if-nez v6, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 455
    .end local v1    # "isFallback":Z
    .end local v2    # "isFingerprintFallback":Z
    .end local v4    # "required":Z
    .end local v6    # "wasSecureBefore":Z
    :cond_4
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 456
    .local v5, "tmp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    move-object v7, v5

    .line 457
    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 459
    :cond_5
    sget-object v7, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    packed-switch p1, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 294
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 478
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x7f10004f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 178
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/cyanogenmod/settings/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 184
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 187
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 188
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 190
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 192
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 194
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 196
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 198
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 201
    new-instance v1, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    .line 202
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 497
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 270
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 271
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 272
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 549
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    const v8, 0x7f10004f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 215
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v8, 0x7f100050

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 217
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const/high16 v8, 0x40000

    iget v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x50000

    iget v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x60000

    iget v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 222
    const v8, 0x7f100051

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 223
    const v8, 0x7f10004e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 224
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 228
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 230
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 234
    const v8, 0x7f10004d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 235
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 237
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 238
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v9, :cond_5

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 241
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 242
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "confirm_credentials"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    .local v1, "confirmCredentials":Z
    if-nez p2, :cond_6

    .line 244
    sget-object v8, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 245
    if-eqz v1, :cond_1

    .line 246
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    const/16 v9, 0x3a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 257
    :cond_1
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 258
    instance-of v8, v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 259
    check-cast v5, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 260
    .local v5, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_7

    const v3, 0x7f09081d

    .line 262
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 263
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/cyanogenmod/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 219
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 230
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 238
    .restart local v2    # "currentType":I
    :cond_5
    const/16 v2, 0x12

    goto :goto_2

    .line 250
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 251
    const-string v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 253
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 254
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 260
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    :cond_7
    const v3, 0x7f09081f

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 473
    return-void
.end method

.method protected updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 308
    .local v0, "previousStage":Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 309
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 313
    if-eq v0, p1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 316
    :cond_0
    return-void
.end method
