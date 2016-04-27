.class public Lcom/android/cyanogenmod/settings/cyanogenmod/UserChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.cyanogenmod.action.UserChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method
