.class public Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultOnDoubleTapListener"
.end annotation


# instance fields
.field private controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0
    .param p2, "controller"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->setController(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    if-nez v5, :cond_0

    .line 207
    :goto_0
    return v3

    .line 191
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v0

    .line 192
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 193
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 195
    .local v2, "y":F
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$000(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v2, v6}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    .line 203
    :goto_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/4 v5, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z
    invoke-static {v3, v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$002(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Z)Z

    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_2
    move v3, v4

    .line 207
    goto :goto_0

    .line 197
    .restart local v0    # "scale":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$000(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v2, v6}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    goto :goto_1

    .line 204
    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :catch_0
    move-exception v3

    goto :goto_2

    .line 201
    .restart local v0    # "scale":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMinimumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v2, v6}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    if-nez v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v6

    .line 158
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 160
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 161
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 163
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 167
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 169
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v3, v6, v7

    .line 171
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v5, v6, v7

    .line 174
    .local v5, "yResult":F
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 175
    const/4 v6, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :cond_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 180
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public setController(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .line 151
    return-void
.end method
