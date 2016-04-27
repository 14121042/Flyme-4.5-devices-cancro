.class Lcom/android/cyanogenmod/settings/SecuritySettings$2;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/SecuritySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$2;->this$0:Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 535
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$2;->this$0:Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 538
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v4, "opts":Landroid/os/Bundle;
    const-string v1, "create-account"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    const-string v1, "cksOp"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    const-string v1, "com.cyanogen"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$2;->this$0:Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 544
    return-void
.end method
