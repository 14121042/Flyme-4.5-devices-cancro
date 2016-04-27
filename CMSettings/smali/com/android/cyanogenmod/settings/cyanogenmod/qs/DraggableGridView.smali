.class public Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;
.super Landroid/view/ViewGroup;
.source "DraggableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;,
        Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    }
.end annotation


# instance fields
.field protected mChildSize:I

.field private mDefaultColor:I

.field protected mDragged:I

.field protected mEnabled:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsDelete:Z

.field protected mLastDelta:F

.field protected mLastTarget:I

.field protected mLastX:I

.field protected mLastY:I

.field protected mLeftOffset:I

.field protected final mNewPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

.field protected mPadding:I

.field protected mScroll:I

.field protected mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

.field protected mTouching:Z

.field protected mUpdateTask:Ljava/lang/Runnable;

.field private mUseLargerFirstRow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    .line 49
    iput v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    iput v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    iput v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    iput v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 50
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    .line 58
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setListeners()V

    .line 84
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setSoundEffectsEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDefaultColor:I

    .line 87
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method protected animateDragging(Z)Ljava/util/List;
    .locals 11
    .param p1, "start"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, "v":Landroid/view/View;
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 435
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 437
    const-string v6, "alpha"

    new-array v7, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v7, v8

    if-eqz p1, :cond_0

    const v3, 0x3f333333    # 0.7f

    :goto_0
    aput v3, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v6, "scaleX"

    new-array v7, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    aput v3, v7, v8

    if-eqz p1, :cond_1

    move v3, v5

    :goto_1
    aput v3, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v3, "scaleY"

    new-array v6, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_2

    :goto_2
    aput v5, v6, v9

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 442
    .local v2, "z":F
    :goto_3
    const-string v3, "translationZ"

    new-array v4, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    aput v5, v4, v8

    aput v2, v4, v9

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-object v0

    .end local v2    # "z":F
    :cond_0
    move v3, v4

    .line 437
    goto :goto_0

    :cond_1
    move v3, v4

    .line 438
    goto :goto_1

    :cond_2
    move v5, v4

    .line 439
    goto :goto_2

    .line 441
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected animateGap(I)V
    .locals 17
    .param p1, "target"    # I

    .prologue
    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_7

    .line 459
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ne v1, v13, :cond_1

    .line 458
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 464
    .local v10, "v":Landroid/view/View;
    move v3, v1

    .line 465
    .local v3, "newPos":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    add-int/lit8 v13, v13, 0x1

    if-lt v1, v13, :cond_6

    move/from16 v0, p1

    if-gt v1, v0, :cond_6

    .line 466
    add-int/lit8 v3, v3, -0x1

    .line 472
    :cond_2
    :goto_2
    move v8, v1

    .line 473
    .local v8, "oldPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 476
    :cond_3
    if-eq v8, v3, :cond_0

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v9

    .line 481
    .local v9, "oldXY":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v4

    .line 483
    .local v4, "newXY":Landroid/graphics/Point;
    const/4 v6, 0x0

    .line 484
    .local v6, "offsetOld":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    if-ge v8, v13, :cond_4

    .line 485
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v6, v13, 0x2

    .line 487
    :cond_4
    new-instance v7, Landroid/graphics/Point;

    iget v13, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v6

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct {v7, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 490
    .local v7, "oldOffset":Landroid/graphics/Point;
    const/4 v5, 0x0

    .line 491
    .local v5, "offsetNew":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v13, :cond_5

    const/4 v13, 0x2

    if-ge v3, v13, :cond_5

    .line 492
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v5, v13, 0x2

    .line 494
    :cond_5
    new-instance v2, Landroid/graphics/Point;

    iget v13, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v5

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct {v2, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 497
    .local v2, "newOffset":Landroid/graphics/Point;
    const-string v13, "translationX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 498
    .local v11, "x":Landroid/animation/Animator;
    const-string v13, "translationY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 499
    .local v12, "y":Landroid/animation/Animator;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 467
    .end local v2    # "newOffset":Landroid/graphics/Point;
    .end local v4    # "newXY":Landroid/graphics/Point;
    .end local v5    # "offsetNew":I
    .end local v6    # "offsetOld":I
    .end local v7    # "oldOffset":Landroid/graphics/Point;
    .end local v8    # "oldPos":I
    .end local v9    # "oldXY":Landroid/graphics/Point;
    .end local v11    # "x":Landroid/animation/Animator;
    .end local v12    # "y":Landroid/animation/Animator;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    move/from16 v0, p1

    if-ge v0, v13, :cond_2

    move/from16 v0, p1

    if-lt v1, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ge v1, v13, :cond_2

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 503
    .end local v3    # "newPos":I
    .end local v10    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method

.method protected clampScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 570
    const/4 v2, 0x3

    .local v2, "stretch":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0xa

    .line 571
    .local v1, "overreach":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getMaxScroll()I

    move-result v0

    .line 572
    .local v0, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 574
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    neg-int v4, v1

    if-ge v3, v4, :cond_1

    .line 575
    neg-int v3, v1

    iput v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 576
    iput v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int v4, v0, v1

    if-le v3, v4, :cond_2

    .line 578
    add-int v3, v0, v1

    iput v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 579
    iput v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    goto :goto_0

    .line 580
    :cond_2
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    if-gez v3, :cond_4

    .line 581
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    neg-int v4, v2

    if-lt v3, v4, :cond_3

    .line 582
    iput v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 583
    :cond_3
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    if-nez v3, :cond_0

    .line 584
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 586
    :cond_4
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    if-le v3, v0, :cond_0

    .line 587
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int v4, v0, v2

    if-gt v3, v4, :cond_5

    .line 588
    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 589
    :cond_5
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    if-nez v3, :cond_0

    .line 590
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    sub-int v4, v0, v4

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 197
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 192
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 193
    iget p2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    goto :goto_0

    .line 194
    :cond_2
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-lt p2, v0, :cond_0

    .line 195
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected getColFromCoordinate(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "coordinate"    # I

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 233
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 235
    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v0

    return v0
.end method

.method protected getColOrRowFromCoordinate(I)I
    .locals 3
    .param p1, "coordinate"    # I

    .prologue
    .line 239
    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    sub-int/2addr p1, v1

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lez p1, :cond_1

    .line 241
    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    if-ge p1, v1, :cond_0

    .line 246
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 244
    .restart local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    iget v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getCoordinateFromIndex(I)Landroid/graphics/Point;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x3

    .line 281
    rem-int/lit8 v0, p1, 0x3

    .line 282
    .local v0, "col":I
    div-int/lit8 v1, p1, 0x3

    .line 284
    .local v1, "row":I
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v2, :cond_1

    .line 286
    if-nez v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 288
    const/4 v1, 0x1

    .line 291
    :cond_0
    if-lt p1, v3, :cond_1

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 296
    :cond_1
    if-ne v0, v3, :cond_2

    .line 297
    const/4 v0, 0x0

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 301
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getIndexFromCoordinate(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 201
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v2

    .line 202
    .local v2, "row":I
    invoke-virtual {p0, v2, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getColFromCoordinate(II)I

    move-result v0

    .line 204
    .local v0, "col":I
    if-eq v0, v3, :cond_0

    if-ne v2, v3, :cond_2

    :cond_0
    move v1, v3

    .line 227
    :cond_1
    :goto_0
    return v1

    .line 207
    :cond_2
    const/4 v1, 0x0

    .line 209
    .local v1, "index":I
    mul-int/lit8 v4, v2, 0x3

    add-int v1, v4, v0

    .line 211
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v4, :cond_4

    .line 214
    if-nez v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v1, v3

    .line 215
    goto :goto_0

    .line 219
    :cond_3
    if-lez v2, :cond_4

    .line 220
    add-int/lit8 v1, v1, -0x1

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 225
    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v0

    return v0
.end method

.method protected getMaxScroll()I
    .locals 5

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    .line 597
    .local v0, "childCount":I
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v2, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x1

    .line 600
    :cond_0
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v1, v2, 0x3

    .line 601
    .local v1, "rowCount":I
    iget v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method protected getTargetFromCoordinate(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 251
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 277
    :cond_0
    :goto_0
    return v2

    .line 256
    :cond_1
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v0

    .line 257
    .local v0, "leftPos":I
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v1

    .line 258
    .local v1, "rightPos":I
    if-ne v0, v3, :cond_2

    if-ne v1, v3, :cond_2

    move v2, v3

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    if-ne v0, v1, :cond_3

    move v2, v3

    .line 264
    goto :goto_0

    .line 267
    :cond_3
    const/4 v2, -0x1

    .line 268
    .local v2, "target":I
    if-le v1, v3, :cond_5

    .line 269
    move v2, v1

    .line 273
    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ge v3, v2, :cond_0

    .line 274
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 270
    :cond_5
    if-le v0, v3, :cond_4

    .line 271
    add-int/lit8 v2, v0, 0x1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 327
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 143
    sub-int v2, p4, p2

    .line 144
    .local v2, "width":I
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    .line 146
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 149
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-eq v0, v4, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    .line 151
    .local v3, "xy":Landroid/graphics/Point;
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 153
    .local v1, "left":I
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 154
    iget v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    add-int/2addr v6, v1

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 148
    .end local v1    # "left":I
    .end local v3    # "xy":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    if-nez v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v0

    .line 335
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-interface {v3, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->onStartDrag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    :cond_2
    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 344
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->animateDragging(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    move v1, v2

    .line 345
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 165
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 166
    .local v1, "availableWidth":I
    int-to-float v7, v1

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    .line 170
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    .line 171
    .local v0, "N":I
    iget v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 172
    .local v2, "childSpec":I
    const/4 v6, 0x0

    .line 174
    .local v6, "visibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 177
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 182
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 174
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 351
    .local v6, "action":I
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_1
    return v0

    .line 353
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    goto :goto_0

    .line 359
    :pswitch_1
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int v8, v0, v1

    .line 360
    .local v8, "delta":I
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 362
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;

    .line 363
    .local v10, "draggedView":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v13, v0

    .local v13, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v14, v0

    .line 365
    .local v14, "y":I
    invoke-virtual {v10}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->getTranslationX()F

    move-result v0

    int-to-float v1, v13

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setTranslationX(F)V

    .line 366
    invoke-virtual {v10}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->getTranslationY()F

    move-result v0

    int-to-float v1, v14

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setTranslationY(F)V

    .line 369
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-virtual {p0, v13, v14}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->isDeleteTarget(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    .line 372
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x10000

    :goto_3
    invoke-virtual {v10, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setColor(I)V

    .line 375
    invoke-virtual {p0, v13, v14}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getTargetFromCoordinate(II)I

    move-result v11

    .line 376
    .local v11, "target":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-eq v0, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v11, v0, :cond_0

    .line 377
    invoke-virtual {p0, v11}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->animateGap(I)V

    .line 378
    iput v11, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 388
    .end local v10    # "draggedView":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
    .end local v11    # "target":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_0
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    .line 390
    int-to-float v0, v8

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    goto/16 :goto_0

    .line 369
    .restart local v10    # "draggedView":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 372
    :cond_2
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDefaultColor:I

    goto :goto_3

    .line 381
    .end local v10    # "draggedView":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_3
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 382
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->clampScroll()V

    .line 383
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    .line 386
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->onLayout(ZIIII)V

    goto :goto_4

    .line 393
    .end local v8    # "delta":I
    :pswitch_2
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 394
    iget v9, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 395
    .local v9, "dragged":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->animateDragging(Z)Ljava/util/List;

    move-result-object v7

    .line 397
    .local v7, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 399
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-nez v0, :cond_7

    .line 400
    invoke-virtual {p0, v9, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->reorderChildren(ILjava/util/List;)V

    .line 413
    :goto_5
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-interface {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->onEndDrag()V

    .line 416
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 419
    .end local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v9    # "dragged":I
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    goto/16 :goto_0

    .line 401
    .restart local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v9    # "dragged":I
    :cond_7
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-eqz v0, :cond_8

    .line 402
    iput v9, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 403
    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->removeViewAt(I)V

    .line 404
    invoke-virtual {p0, v9, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->reorderChildren(ILjava/util/List;)V

    goto :goto_5

    .line 406
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 407
    .local v12, "v":Landroid/view/View;
    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 426
    .end local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v9    # "dragged":I
    .end local v12    # "v":Landroid/view/View;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 131
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method protected reorderChildren(ILjava/util/List;)V
    .locals 13
    .param p1, "dragged"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 512
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v6, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 515
    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 516
    .local v9, "v":Landroid/view/View;
    new-instance v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;)V

    .line 517
    .local v8, "info":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    .line 518
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    .line 519
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    .line 520
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 521
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 522
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 525
    .end local v8    # "info":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->removeAllViews()V

    .line 526
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-eq p1, v0, :cond_4

    .line 527
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 529
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    goto :goto_1

    .line 531
    :cond_2
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-ge p1, v0, :cond_3

    .line 533
    add-int/lit8 v0, p1, 0x1

    invoke-static {v6, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 534
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 535
    :cond_3
    iget v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-le p1, v0, :cond_1

    .line 537
    add-int/lit8 v0, p1, -0x1

    invoke-static {v6, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 538
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 541
    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 541
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 545
    :cond_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->onLayout(ZIIII)V

    .line 547
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 548
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    .line 549
    .restart local v8    # "info":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    const-string v2, "translationX"

    new-array v3, v12, [F

    iget v4, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    iget-object v5, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v11

    aput v10, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_6
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 554
    iget-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v12, [F

    iget v4, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    iget-object v5, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v11

    aput v10, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 558
    .end local v8    # "info":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    :cond_8
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 135
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->removeAllViews()V

    .line 136
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iput v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 138
    iput v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 139
    return-void
.end method

.method protected setListeners()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 614
    return-void
.end method

.method public setOnRearrangeListener(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    .line 610
    return-void
.end method

.method public setUseLargeFirstRow(Z)V
    .locals 0
    .param p1, "largeFirstRow"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    .line 91
    return-void
.end method

.method protected startAnimation(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 452
    .local v0, "animation":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 453
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 454
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
