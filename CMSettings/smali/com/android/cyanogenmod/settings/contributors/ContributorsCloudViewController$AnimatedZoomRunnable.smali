.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;FFFF)V
    .locals 2
    .param p2, "currentZoom"    # F
    .param p3, "targetZoom"    # F
    .param p4, "focalX"    # F
    .param p5, "focalY"    # F

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput p4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalX:F

    .line 1187
    iput p5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalY:F

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mStartTime:J

    .line 1189
    iput p2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    .line 1190
    iput p3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomEnd:F

    .line 1191
    return-void
.end method

.method private interpolate()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget v2, v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1214
    .local v0, "t":F
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1215
    sget-object v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1216
    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1195
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1196
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->interpolate()F

    move-result v3

    .line 1201
    .local v3, "t":F
    iget v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomEnd:F

    iget v6, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    .line 1202
    .local v2, "scale":F
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v4

    div-float v0, v2, v4

    .line 1204
    .local v0, "deltaScale":F
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalX:F

    iget v6, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->onScale(FFF)V

    .line 1207
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 1208
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
