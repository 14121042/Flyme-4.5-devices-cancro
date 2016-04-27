.class final Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;
.super Landroid/database/ContentObserver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/ApnSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->this$0:Lcom/android/cyanogenmod/settings/ApnSettings;

    .line 141
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->this$0:Lcom/android/cyanogenmod/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    const-string v0, "ApnSettings"

    const-string v1, "apnObserver: preferred apn changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->this$0:Lcom/android/cyanogenmod/settings/ApnSettings;

    # invokes: Lcom/android/cyanogenmod/settings/ApnSettings;->handleResetOrFill()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->access$100(Lcom/android/cyanogenmod/settings/ApnSettings;)V

    .line 148
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->this$0:Lcom/android/cyanogenmod/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, "cr":Landroid/content/ContentResolver;
    # getter for: Lcom/android/cyanogenmod/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/cyanogenmod/settings/ApnSettings;->access$200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void
.end method
