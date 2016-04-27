.class public Lcom/android/cyanogenmod/settings/cyanogenmod/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/DisplaySettings;->restore(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->restore(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->restore(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->restore(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/location/LocationSettings;->restore(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->extractContributorsCloudDatabase(Landroid/content/Context;)V

    .line 47
    return-void
.end method
