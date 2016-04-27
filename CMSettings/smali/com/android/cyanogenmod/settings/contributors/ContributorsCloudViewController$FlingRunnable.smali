.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field protected final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1227
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 1230
    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z
    invoke-static {}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    const-string v0, "ContributorsCloud"

    const-string v1, "Cancel Fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1234
    return-void
.end method

.method public fling(IIII)V
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 1239
    .local v11, "rect":Landroid/graphics/RectF;
    if-nez v11, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    iget v0, v11, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1246
    .local v1, "startX":I
    int-to-float v0, p1

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 1247
    const/4 v5, 0x0

    .line 1248
    .local v5, "minX":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1253
    .local v6, "maxX":I
    :goto_1
    iget v0, v11, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1254
    .local v2, "startY":I
    int-to-float v0, p2

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 1255
    const/4 v7, 0x0

    .line 1256
    .local v7, "minY":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1261
    .local v8, "maxY":I
    :goto_2
    iput v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    .line 1262
    iput v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    .line 1264
    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z
    invoke-static {}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    const-string v0, "ContributorsCloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling. StartX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " StartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MaxX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MaxY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_2
    if-ne v1, v6, :cond_3

    if-eq v2, v8, :cond_0

    .line 1271
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto/16 :goto_0

    .line 1250
    .end local v2    # "startY":I
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_4
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_1

    .line 1258
    .restart local v2    # "startY":I
    :cond_5
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1278
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1283
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1285
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 1286
    .local v1, "newX":I
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 1288
    .local v2, "newY":I
    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z
    invoke-static {}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1289
    const-string v3, "ContributorsCloud"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fling run(). CurrentX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CurrentY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$300(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1294
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V
    invoke-static {v3, v4}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$400(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Landroid/graphics/Matrix;)V

    .line 1296
    iput v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    .line 1297
    iput v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    .line 1300
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
