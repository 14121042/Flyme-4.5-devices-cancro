.class Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$InternalActivity;

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v3, "password"

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 283
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 295
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # ++operator for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$304(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 288
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 289
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    goto :goto_0

    .line 291
    .end local v0    # "deadline":J
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/cyanogenmod/settings/ConfirmLockPattern$Stage;)V

    .line 292
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/cyanogenmod/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method
