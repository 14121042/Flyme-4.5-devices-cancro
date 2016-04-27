.class public Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutCleanupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutCleanupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cleanupLockscreenShortcuts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;-><init>(Landroid/content/Context;Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;)V

    .line 47
    .local v0, "helper":Lcom/android/internal/util/cm/LockscreenShortcutsHelper;
    invoke-virtual {v0, p2}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->removeTargetsForPackage(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 31
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutCleanupReceiver;->cleanupLockscreenShortcuts(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
