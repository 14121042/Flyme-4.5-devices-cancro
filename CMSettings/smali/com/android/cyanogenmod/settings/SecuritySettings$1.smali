.class final Lcom/android/cyanogenmod/settings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/SecuritySettings;->updateCyanogenDeviceLockState(Landroid/app/Fragment;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activityRequestCode:I

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$setCks:Z


# direct methods
.method constructor <init>(ZLandroid/app/Fragment;I)V
    .locals 0

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$setCks:Z

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$fragment:Landroid/app/Fragment;

    iput p3, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$activityRequestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "f":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v3, 0x1

    .line 396
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 397
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 398
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "cksOp"

    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$setCks:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v3, "authCks"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$fragment:Landroid/app/Fragment;

    iget v4, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$1;->val$activityRequestCode:I

    invoke-virtual {v3, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 398
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 401
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "SecuritySettings"

    const-string v4, "confirmCredentials failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
