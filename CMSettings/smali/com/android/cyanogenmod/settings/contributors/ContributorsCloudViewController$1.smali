.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$1;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$1;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 276
    .local v0, "scaleFactor":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_0
    return v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$1;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->onScale(FFF)V

    .line 281
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 292
    return-void
.end method
