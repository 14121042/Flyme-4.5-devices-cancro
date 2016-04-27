.class Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V

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
    .line 346
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
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
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const v2, 0x7f09082e

    const/4 v4, 0x4

    const-wide/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_4

    .line 280
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090833

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 286
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090839

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090837

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090836

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 306
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090839

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 315
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 317
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090834

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->setResult(I)V

    .line 325
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->finish()V

    goto/16 :goto_0

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget v1, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    .line 328
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 332
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090845

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    # invokes: Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToAccount()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->access$200(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 269
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090832

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    return-void
.end method
