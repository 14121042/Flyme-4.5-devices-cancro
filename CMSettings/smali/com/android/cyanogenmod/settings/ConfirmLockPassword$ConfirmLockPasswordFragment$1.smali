.class Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$302(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 238
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 227
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 228
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v3, 0x7f090846

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/cyanogenmod/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
