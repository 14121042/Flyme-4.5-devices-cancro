.class public Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;
.super Landroid/widget/ProgressBar;
.source "FingerprintProgressBar.java"


# instance fields
.field private mErrorPaint:Landroid/graphics/Paint;

.field private mFingerprintMask:Landroid/graphics/drawable/Drawable;

.field private mMaskedCanvas:Landroid/graphics/Canvas;

.field private mMaskedProgress:Landroid/graphics/Bitmap;

.field private mNormalPaint:Landroid/graphics/Paint;

.field mProgressAnimation:Landroid/animation/ObjectAnimator;

.field private mShowError:Z

.field private mSuccessPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020034

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mFingerprintMask:Landroid/graphics/drawable/Drawable;

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    const v2, 0x7f08002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mSuccessPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mSuccessPaint:Landroid/graphics/Paint;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mSuccessPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mErrorPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mErrorPaint:Landroid/graphics/Paint;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mErrorPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    return-void
.end method

.method private drawProgressOffscreen()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->getWidth()I

    move-result v6

    .line 101
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->getHeight()I

    move-result v0

    .line 102
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->getMax()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->getMax()I

    move-result v9

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 104
    .local v2, "progress":F
    :goto_0
    int-to-float v8, v0

    int-to-float v9, v0

    mul-float/2addr v9, v2

    sub-float v5, v8, v9

    .line 105
    .local v5, "splitAt":F
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, v6

    invoke-direct {v1, v7, v7, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 106
    .local v1, "normalFillRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v0

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .local v3, "progressFillRect":Landroid/graphics/RectF;
    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mShowError:Z

    if-eqz v7, :cond_1

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mErrorPaint:Landroid/graphics/Paint;

    .line 109
    .local v4, "progressPaint":Landroid/graphics/Paint;
    :goto_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mFingerprintMask:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 113
    return-void

    .end local v1    # "normalFillRect":Landroid/graphics/RectF;
    .end local v2    # "progress":F
    .end local v3    # "progressFillRect":Landroid/graphics/RectF;
    .end local v4    # "progressPaint":Landroid/graphics/Paint;
    .end local v5    # "splitAt":F
    :cond_0
    move v2, v7

    .line 102
    goto :goto_0

    .line 107
    .restart local v1    # "normalFillRect":Landroid/graphics/RectF;
    .restart local v2    # "progress":F
    .restart local v3    # "progressFillRect":Landroid/graphics/RectF;
    .restart local v5    # "splitAt":F
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mSuccessPaint:Landroid/graphics/Paint;

    goto :goto_1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedProgress:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 79
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mFingerprintMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedProgress:Landroid/graphics/Bitmap;

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedProgress:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    .line 82
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->drawProgressOffscreen()V

    .line 83
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->drawProgressOffscreen()V

    .line 95
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressAnimated(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "progress"

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    .line 118
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 124
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mProgressAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public showError(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mShowError:Z

    if-eq v0, p1, :cond_0

    .line 128
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mShowError:Z

    .line 129
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->mMaskedCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->drawProgressOffscreen()V

    .line 131
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/FingerprintProgressBar;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method
