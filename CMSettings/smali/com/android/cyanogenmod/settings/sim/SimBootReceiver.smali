.class public Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 146
    new-instance v0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver$1;-><init>(Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->detectChangeAndNotify()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 143
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0200cb

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f080064

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090cbe

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090cbf

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 125
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/cyanogenmod/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 134
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 137
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 138
    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 56
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .line 57
    .local v6, "numSlots":I
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    move v2, v9

    .line 59
    .local v2, "isInProvisioning":Z
    :goto_0
    const/4 v4, 0x0

    .line 60
    .local v4, "notificationSent":Z
    const/4 v5, 0x0

    .line 61
    .local v5, "numSIMsDetected":I
    const/4 v3, -0x1

    .line 64
    .local v3, "lastSIMSlotDetected":I
    const/4 v11, 0x2

    if-lt v6, v11, :cond_0

    if-eqz v2, :cond_2

    .line 113
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isInProvisioning":Z
    .end local v3    # "lastSIMSlotDetected":I
    .end local v4    # "notificationSent":Z
    .end local v5    # "numSIMsDetected":I
    :cond_1
    move v2, v10

    .line 57
    goto :goto_0

    .line 69
    .restart local v2    # "isInProvisioning":Z
    .restart local v3    # "lastSIMSlotDetected":I
    .restart local v4    # "notificationSent":Z
    .restart local v5    # "numSIMsDetected":I
    :cond_2
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 72
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 74
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 76
    .local v0, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v8

    .line 80
    .local v8, "smsSelected":Z
    if-eqz v0, :cond_3

    if-nez v8, :cond_0

    .line 88
    :cond_3
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 89
    .local v7, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v9, :cond_0

    .line 93
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 95
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v9, :cond_4

    .line 97
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/cyanogenmod/settings/sim/SimDialogActivity;

    invoke-direct {v1, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    sget-object v9, Lcom/android/cyanogenmod/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    sget-object v11, Lcom/android/cyanogenmod/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 102
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez v0, :cond_0

    .line 106
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/cyanogenmod/settings/sim/SimDialogActivity;

    invoke-direct {v1, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    sget-object v9, Lcom/android/cyanogenmod/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 53
    return-void
.end method
