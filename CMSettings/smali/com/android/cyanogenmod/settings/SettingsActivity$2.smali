.class Lcom/android/cyanogenmod/settings/SettingsActivity$2;
.super Landroid/os/Handler;
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
    .line 388
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$2;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 394
    .local v0, "forceRefresh":Z
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$2;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$2;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    # getter for: Lcom/android/cyanogenmod/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/SettingsActivity;->access$200(Lcom/android/cyanogenmod/settings/SettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/android/cyanogenmod/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/SettingsActivity;->access$300(Lcom/android/cyanogenmod/settings/SettingsActivity;Ljava/util/List;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
