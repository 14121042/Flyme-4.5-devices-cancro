.class Lcom/android/cyanogenmod/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$1;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {p2}, Lcom/android/cyanogenmod/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 353
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$1;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    # getter for: Lcom/android/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/SettingsActivity;->access$000(Lcom/android/cyanogenmod/settings/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$1;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    # setter for: Lcom/android/cyanogenmod/settings/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->access$002(Lcom/android/cyanogenmod/settings/SettingsActivity;Z)Z

    .line 355
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$1;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    const/4 v3, 0x1

    # invokes: Lcom/android/cyanogenmod/settings/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/SettingsActivity;->access$100(Lcom/android/cyanogenmod/settings/SettingsActivity;Z)V

    .line 358
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
