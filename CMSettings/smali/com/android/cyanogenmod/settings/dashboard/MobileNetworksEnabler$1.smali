.class Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworksEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler$1;->this$0:Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler$1;->this$0:Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;

    # invokes: Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;->updateState()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;->access$000(Lcom/android/cyanogenmod/settings/dashboard/MobileNetworksEnabler;)V

    .line 54
    :cond_0
    return-void
.end method
