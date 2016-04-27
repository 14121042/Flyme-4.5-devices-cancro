.class Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;
.super Ljava/lang/Object;
.source "NotificationManagerSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    .local v2, "val":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    # getter for: Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I
    invoke-static {v5}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->access$000(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 85
    :goto_0
    return v3

    .line 78
    :cond_0
    const v5, 0x7f090cfd

    if-eq v2, v5, :cond_2

    move v0, v3

    .line 79
    .local v0, "enabled":Z
    :goto_1
    const v5, 0x7f090cfb

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 80
    .local v1, "show":Z
    :goto_2
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    # invokes: Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->access$100(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    # invokes: Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->access$200(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;->this$0:Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    # setter for: Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I
    invoke-static {v4, v2}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->access$002(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;I)I

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    move v0, v4

    .line 78
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v4

    .line 79
    goto :goto_2

    .restart local v1    # "show":Z
    :cond_4
    move v5, v4

    .line 80
    goto :goto_3
.end method
