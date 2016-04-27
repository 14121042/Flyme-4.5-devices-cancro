.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->createAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 172
    .local v0, "delta":F
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastStartAngle:F
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$400(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastStartAngle:F
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$400(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v3

    mul-float v4, v5, v0

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    rem-float/2addr v2, v5

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mStartAngle:F
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$302(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 173
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastSweepAngle:F
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$600(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v2

    const v3, 0x439d8000    # 315.0f

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastSweepAngle:F
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$600(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mSweepAngle:F
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$502(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 175
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$4;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->invalidateSelf()V

    .line 176
    return-void
.end method
