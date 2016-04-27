.class public Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$3;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnScaleChangeListener;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;,
        Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreDoubleTapScale:Z

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private final mMinimumVelocity:F

.field private mPhotoTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnScaleChangeListener;

.field private mScaleDragDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "ContributorsCloud"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z

    .line 64
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;Z)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "zoomable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    .line 73
    const/high16 v3, 0x3fe00000    # 1.75f

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMidScale:F

    .line 74
    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    .line 76
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mAllowParentInterceptOnEdge:Z

    .line 77
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    .line 80
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    .line 81
    iput v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    .line 225
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 226
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 227
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 228
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    .line 229
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    .line 240
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    .line 243
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 250
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 251
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinimumVelocity:F

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mTouchSlop:F

    .line 254
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    .line 256
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 257
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 260
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 266
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$1;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V

    .line 294
    .local v1, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    .line 296
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;

    invoke-direct {v5, p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 307
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;

    invoke-direct {v4, p0, p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->cancelFling()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    .line 740
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 749
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 758
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 759
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching to this controller"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 767
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 768
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v8

    .line 772
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 773
    .local v4, "rect":Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 777
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 778
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 780
    .local v1, "deltaY":F
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 781
    .local v5, "viewHeight":I
    int-to-float v10, v5

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 782
    sget-object v10, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 790
    int-to-float v10, v5

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 799
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 800
    .local v6, "viewWidth":I
    int-to-float v10, v6

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    .line 801
    sget-object v8, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    .line 809
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v13

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 812
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    .line 824
    :goto_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v8, v9

    .line 825
    goto :goto_0

    .line 784
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 785
    goto :goto_1

    .line 787
    :pswitch_1
    int-to-float v10, v5

    sub-float/2addr v10, v2

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 788
    goto :goto_1

    .line 793
    :cond_3
    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_4

    .line 794
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    goto :goto_1

    .line 795
    :cond_4
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 796
    int-to-float v10, v5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v11

    goto :goto_1

    .line 803
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 804
    goto :goto_2

    .line 806
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 807
    goto :goto_2

    .line 813
    :cond_5
    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6

    .line 814
    iput v8, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    .line 815
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 816
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v6

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 817
    int-to-float v8, v6

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v10

    .line 818
    iput v9, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    goto :goto_3

    .line 820
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    goto :goto_3

    .line 782
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 801
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 92
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    return-void
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 979
    :try_start_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 981
    :goto_0
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_0
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 987
    :try_start_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 989
    :goto_0
    return v1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 837
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 839
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 842
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 843
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    .line 846
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 972
    if-nez p1, :cond_0

    .line 973
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 869
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 877
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 878
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    .line 879
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 883
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkImageViewScaleType()V

    .line 886
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 889
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 890
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 891
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 892
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 896
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 135
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 904
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 905
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    .line 910
    .local v8, "viewWidth":F
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    .line 911
    .local v7, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 912
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 914
    .local v0, "drawableHeight":I
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 916
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 917
    .local v9, "widthScale":F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 919
    .local v2, "heightScale":F
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 920
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 962
    :goto_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->resetMatrix()V

    goto :goto_0

    .line 923
    :cond_2
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 924
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 925
    .local v6, "scale":F
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 926
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 929
    .end local v6    # "scale":F
    :cond_3
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 930
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 931
    .restart local v6    # "scale":F
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 932
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 936
    .end local v6    # "scale":F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 937
    .local v5, "mTempSrc":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 939
    .local v4, "mTempDst":Landroid/graphics/RectF;
    sget-object v10, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 946
    :pswitch_0
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 941
    :pswitch_1
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 950
    :pswitch_2
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 954
    :pswitch_3
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 343
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 346
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 351
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->cancelFling()V

    .line 357
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 358
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 362
    :cond_3
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    .line 363
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mPhotoTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    .line 364
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mViewTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    .line 367
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    .line 372
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 731
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 732
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 411
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->cleanup()V

    .line 413
    const-string v1, "ContributorsCloud"

    const-string v2, "ImageView no longer exists. You should not use this reference any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mPhotoTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mViewTapListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 433
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public onDrag(FF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    :goto_0
    return-void

    .line 446
    :cond_0
    sget-boolean v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 447
    const-string v2, "ContributorsCloud"

    const-string v3, "onDrag: dx: %.2f. dy: %.2f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 451
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 452
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    .line 463
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 464
    .local v1, "parent":Landroid/view/ViewParent;
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    if-nez v2, :cond_5

    .line 466
    iget v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-eq v2, v8, :cond_3

    iget v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-ne v2, v7, :cond_4

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4

    .line 469
    :cond_3
    if-eqz v1, :cond_4

    .line 470
    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 477
    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    goto :goto_0

    .line 473
    :cond_5
    if-eqz v1, :cond_4

    .line 474
    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 481
    sget-boolean v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "ContributorsCloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling. sX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 486
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    .line 487
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;->fling(IIII)V

    .line 489
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    .line 491
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 497
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 498
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v5, :cond_2

    .line 499
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 500
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 501
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 502
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 511
    .local v2, "left":I
    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 514
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iput v4, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvTop:I

    .line 518
    iput v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvRight:I

    .line 519
    iput v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvBottom:I

    .line 520
    iput v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIvLeft:I

    .line 526
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 5
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 529
    sget-boolean v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "ContributorsCloud"

    const-string v1, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v0

    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnScaleChangeListener;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleChangeListener:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnScaleChangeListener;->onScaleChange(FFF)V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 539
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    .line 541
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 546
    const/4 v8, 0x0

    .line 548
    .local v8, "handled":Z
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 550
    .local v9, "parent":Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v12

    .line 583
    .local v12, "wasScaling":Z
    iget-boolean v11, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    .line 585
    .local v11, "wasDragging":Z
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 587
    if-nez v12, :cond_4

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x1

    .line 588
    .local v7, "didntScale":Z
    :goto_1
    if-nez v11, :cond_5

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-nez v0, :cond_5

    const/4 v6, 0x1

    .line 590
    .local v6, "didntDrag":Z
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    .line 594
    .end local v6    # "didntDrag":Z
    .end local v7    # "didntScale":Z
    .end local v11    # "wasDragging":Z
    .end local v12    # "wasScaling":Z
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    const/4 v8, 0x1

    .line 600
    .end local v9    # "parent":Landroid/view/ViewParent;
    :cond_2
    return v8

    .line 554
    .restart local v9    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    if-eqz v9, :cond_3

    .line 555
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 562
    :goto_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->cancelFling()V

    goto :goto_0

    .line 557
    :cond_3
    const-string v0, "ContributorsCloud"

    const-string v1, "onTouch getParent() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 569
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v0

    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v10

    .line 571
    .local v10, "rect":Landroid/graphics/RectF;
    if-eqz v10, :cond_0

    .line 572
    new-instance v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 574
    const/4 v8, 0x1

    goto :goto_0

    .line 587
    .end local v10    # "rect":Landroid/graphics/RectF;
    .restart local v11    # "wasDragging":Z
    .restart local v12    # "wasScaling":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 588
    .restart local v7    # "didntScale":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 590
    .restart local v6    # "didntDrag":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 994
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 997
    .local v0, "action":I
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1023
    :cond_0
    :goto_0
    :pswitch_0
    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    :goto_1
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 1103
    :cond_1
    :goto_2
    const/4 v10, 0x1

    return v10

    .line 999
    :pswitch_1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    goto :goto_0

    .line 1003
    :pswitch_2
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    goto :goto_0

    .line 1009
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v5, v10, 0x8

    .line 1011
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1012
    .local v4, "pointerId":I
    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    if-ne v4, v10, :cond_0

    .line 1015
    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 1016
    .local v3, "newPointerIndex":I
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mActivePointerId:I

    .line 1017
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    .line 1018
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    goto :goto_0

    .line 1015
    .end local v3    # "newPointerIndex":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 1023
    .end local v4    # "pointerId":I
    .end local v5    # "pointerIndex":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 1028
    :pswitch_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1029
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_4

    .line 1030
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1035
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    .line 1036
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    .line 1037
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    goto :goto_2

    .line 1032
    :cond_4
    const-string v10, "ContributorsCloud"

    const-string v11, "Velocity tracker is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1042
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    .line 1043
    .local v8, "x":F
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    .line 1044
    .local v9, "y":F
    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    sub-float v1, v8, v10

    .local v1, "dx":F
    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    sub-float v2, v9, v10

    .line 1046
    .local v2, "dy":F
    iget-boolean v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-nez v10, :cond_5

    .line 1049
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v12, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mTouchSlop:F

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    .line 1052
    :cond_5
    iget-boolean v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-eqz v10, :cond_1

    .line 1053
    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->onDrag(FF)V

    .line 1054
    iput v8, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    .line 1055
    iput v9, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    .line 1057
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 1058
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1049
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 1066
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_6
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 1067
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1068
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 1074
    :pswitch_7
    iget-boolean v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-eqz v10, :cond_7

    .line 1075
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    .line 1080
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1081
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1083
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .local v6, "vX":F
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 1088
    .local v7, "vY":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinimumVelocity:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    .line 1089
    iget v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchX:F

    iget v11, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLastTouchY:F

    neg-float v12, v6

    neg-float v13, v7

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->onFling(FFFF)V

    .line 1095
    .end local v6    # "vX":F
    .end local v7    # "vY":F
    :cond_7
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 1096
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1097
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1026
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 618
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkZoomLevels(FFF)V

    .line 619
    iput p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    .line 620
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 613
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    iget v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkZoomLevels(FFF)V

    .line 614
    iput p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMidScale:F

    .line 615
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 671
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 673
    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 674
    :cond_0
    const-string v0, "ContributorsCloud"

    const-string v1, "Scale must be within the range of minScale and maxScale"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    if-eqz p4, :cond_3

    .line 679
    new-instance v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 688
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    goto :goto_0

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 683
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    goto :goto_1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 855
    if-gez p1, :cond_0

    .line 856
    const/16 p1, 0xc8

    .line 857
    :cond_0
    iput p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    .line 858
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .param p1, "zoomable"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    .line 705
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->update()V

    .line 706
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 711
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 712
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 714
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 717
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->resetMatrix()V

    goto :goto_0
.end method
