.class Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;
.super Ljava/lang/Object;
.source "DraggableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v1, v1, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    if-lez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/lit8 v1, v1, -0x14

    iput v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->clampScroll()V

    .line 75
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->onLayout(ZIIII)V

    .line 76
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v2, v2, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getMaxScroll()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v2, v2, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 69
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    float-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    .line 70
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iput v6, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    goto/16 :goto_0
.end method
