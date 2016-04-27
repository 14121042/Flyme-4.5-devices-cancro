.class final Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V
    .locals 1

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    .line 372
    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 364
    const-string v0, "display_temperature_day"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    .line 366
    const-string v0, "display_temperature_night"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    .line 368
    const-string v0, "display_temperature_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    .line 373
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 389
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    # invokes: Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateModeSummary()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->access$200(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V

    .line 390
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    # invokes: Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateTemperatureSummary()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->access$300(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V

    .line 391
    return-void
.end method

.method public register(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 376
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    # invokes: Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->access$100(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 379
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 380
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
