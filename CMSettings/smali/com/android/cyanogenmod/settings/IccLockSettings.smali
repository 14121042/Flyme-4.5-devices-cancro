.class public Lcom/android/cyanogenmod/settings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 111
    new-instance v0, Lcom/android/cyanogenmod/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/IccLockSettings$1;-><init>(Lcom/android/cyanogenmod/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/cyanogenmod/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/IccLockSettings$2;-><init>(Lcom/android/cyanogenmod/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/IccLockSettings;)Lcom/android/cyanogenmod/settings/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/IccLockSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 518
    if-ltz p2, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 526
    .end local v0    # "displayMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090726

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;II)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "requestType"    # I
    .param p3, "attemptsRemaining"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const v3, 0x7f090723

    .line 410
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_8

    .line 411
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "exception":Ljava/lang/Throwable;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 413
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 415
    if-ne p2, v5, :cond_1

    .line 416
    const v1, 0x7f090234

    .line 420
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 461
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v1    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 418
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f090233

    .restart local v1    # "id":I
    goto :goto_0

    .line 422
    .end local v1    # "id":I
    :cond_2
    if-ne p2, v5, :cond_6

    .line 423
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 424
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 425
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 430
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 435
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 436
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 441
    :cond_5
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 447
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 448
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 452
    :cond_7
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090724

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/cyanogenmod/settings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 458
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_8
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccLockChanged(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 465
    if-nez p1, :cond_1

    .line 466
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 478
    :goto_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 479
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->resetDialogState()V

    .line 480
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 475
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/android/cyanogenmod/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    goto :goto_1
.end method

.method private iccPinChanged(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/android/cyanogenmod/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    .line 491
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->resetDialogState()V

    .line 492
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090725

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 503
    :cond_0
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 511
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 513
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->setDialogValues()V

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 515
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f090720

    .line 306
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 307
    const-string v0, ""

    .line 308
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 333
    return-void

    .line 310
    :pswitch_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09071a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09071b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09071c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 316
    :pswitch_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09071d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09071e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09071f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->setDialogValues()V

    .line 302
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 401
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 496
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 498
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->finish()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const v4, 0x7f06004b

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 176
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/EditPinPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    .line 177
    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 178
    if-eqz p1, :cond_2

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 181
    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 182
    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 183
    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    .line 186
    iget v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 203
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/cyanogenmod/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "slot_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 213
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 214
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 215
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->updatePreferences()V

    .line 217
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 218
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 219
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 220
    const-string v4, "sub_display_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 192
    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 193
    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->finish()V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 258
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-void
.end method

.method public onPinEntered(Lcom/android/cyanogenmod/settings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/cyanogenmod/settings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 336
    if-nez p2, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->resetDialogState()V

    .line 377
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090721

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 348
    :cond_1
    iget v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 354
    iput v3, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 355
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 356
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 361
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 362
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090722

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 368
    iput v3, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 369
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 370
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 372
    :cond_2
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 381
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    .line 385
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 386
    iput v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    .line 387
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 392
    :goto_0
    return v0

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 389
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->showPinDialog()V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mPinDialog:Lcom/android/cyanogenmod/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    iget v0, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 278
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
