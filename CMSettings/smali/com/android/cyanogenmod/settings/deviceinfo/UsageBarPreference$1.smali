.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$1700(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mRescanMediaStarted:Z
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$1802(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;Z)Z

    .line 580
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$1900(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$1900(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView;->startProgress()V

    .line 582
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$2000(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1$1;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    :cond_0
    return-void
.end method
