.class Lcom/android/cyanogenmod/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # invokes: Lcom/android/cyanogenmod/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$400(Lcom/android/cyanogenmod/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 506
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->passwordType:I

    .line 507
    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 508
    const-string v2, "0"

    const-string v3, "PatternVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->pattern_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 508
    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 509
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    iget v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->passwordType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 519
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f040030

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 520
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f090b3f

    # setter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1402(Lcom/android/cyanogenmod/settings/CryptKeeper;I)I

    .line 529
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # getter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$600(Lcom/android/cyanogenmod/settings/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # getter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1400(Lcom/android/cyanogenmod/settings/CryptKeeper;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f100076

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 532
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 535
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # invokes: Lcom/android/cyanogenmod/settings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1600(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    .line 537
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # getter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$100(Lcom/android/cyanogenmod/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # getter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$100(Lcom/android/cyanogenmod/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->pattern_visible:Z

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # getter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mCooldown:Z
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1700(Lcom/android/cyanogenmod/settings/CryptKeeper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # invokes: Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1500(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V

    .line 543
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # invokes: Lcom/android/cyanogenmod/settings/CryptKeeper;->cooldown()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1800(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    .line 546
    :cond_1
    return-void

    .line 521
    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    :cond_2
    iget v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->passwordType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 522
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f04002d

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 523
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    # invokes: Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v3, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1500(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V

    .line 524
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f090b40

    # setter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1402(Lcom/android/cyanogenmod/settings/CryptKeeper;I)I

    goto :goto_0

    .line 526
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f04002b

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 527
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->this$0:Lcom/android/cyanogenmod/settings/CryptKeeper;

    const v4, 0x7f090b3e

    # setter for: Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->access$1402(Lcom/android/cyanogenmod/settings/CryptKeeper;I)I

    goto :goto_0

    .restart local v0    # "ownerInfo":Landroid/widget/TextView;
    :cond_4
    move v1, v2

    .line 538
    goto :goto_1
.end method
