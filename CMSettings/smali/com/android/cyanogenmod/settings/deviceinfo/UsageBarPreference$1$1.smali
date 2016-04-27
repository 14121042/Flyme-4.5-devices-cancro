.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1$1;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1$1;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->access$1700(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;)Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;->onRequestMediaRescan()V

    .line 586
    return-void
.end method
