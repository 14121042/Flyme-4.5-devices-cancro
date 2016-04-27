.class Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->removeAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
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
    .line 134
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    .line 139
    .local v0, "failed":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "booleanResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 150
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    const/16 v2, 0x65

    # invokes: Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_1

    .line 145
    :catch_1
    move-exception v1

    goto :goto_1

    .line 143
    :catch_2
    move-exception v1

    goto :goto_1
.end method
