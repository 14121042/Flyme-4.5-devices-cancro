.class final Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    .line 512
    # getter for: Lcom/android/cyanogenmod/settings/SoundSettings;->mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$200(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 506
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 508
    const-string v0, "volume_link_notification"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    .line 513
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 528
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # invokes: Lcom/android/cyanogenmod/settings/SoundSettings;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$1000(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # invokes: Lcom/android/cyanogenmod/settings/SoundSettings;->updateNotificationPreferenceState()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$1100(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    .line 534
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 519
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
