.class Lcom/android/cyanogenmod/settings/users/UserSettings$11;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/users/UserSettings;->removeUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/users/UserSettings$11;->this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/users/UserSettings$11;->this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;

    # getter for: Lcom/android/cyanogenmod/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/users/UserSettings;->access$1600(Lcom/android/cyanogenmod/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/users/UserSettings$11;->this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;

    # getter for: Lcom/android/cyanogenmod/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/users/UserSettings;->access$700(Lcom/android/cyanogenmod/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/users/UserSettings$11;->this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;

    # getter for: Lcom/android/cyanogenmod/settings/users/UserSettings;->mRemovingUserId:I
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/users/UserSettings;->access$300(Lcom/android/cyanogenmod/settings/users/UserSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 646
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/users/UserSettings$11;->this$0:Lcom/android/cyanogenmod/settings/users/UserSettings;

    # getter for: Lcom/android/cyanogenmod/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/users/UserSettings;->access$500(Lcom/android/cyanogenmod/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
