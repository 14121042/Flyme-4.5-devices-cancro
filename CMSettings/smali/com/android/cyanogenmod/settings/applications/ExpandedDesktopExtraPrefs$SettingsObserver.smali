.class final Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ExpandedDesktopExtraPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    .line 129
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->access$000(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    const-string v0, "policy_control_style"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    .line 130
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 144
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->updateExpandedDesktopStyle()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->access$200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)V

    .line 147
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
