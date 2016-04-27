.class Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 90
    const-string v1, "onNotificationPosted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/android/cyanogenmod/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 92
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    # getter for: Lcom/android/cyanogenmod/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->access$200(Lcom/android/cyanogenmod/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    # getter for: Lcom/android/cyanogenmod/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->access$200(Lcom/android/cyanogenmod/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 99
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    # getter for: Lcom/android/cyanogenmod/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->access$200(Lcom/android/cyanogenmod/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationStation$2;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationStation;

    # getter for: Lcom/android/cyanogenmod/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/notification/NotificationStation;->access$200(Lcom/android/cyanogenmod/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method
