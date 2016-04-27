.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;
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
    .line 183
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 187
    .local v0, "delta":F
    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v1, v2, v0

    .line 188
    .local v1, "deltaAngle":F
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mStartAngle:F
    invoke-static {v2, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$302(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 189
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    const v3, 0x439d8000    # 315.0f

    sub-float/2addr v3, v1

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mSweepAngle:F
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$502(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 191
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mRotating:Z
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$700(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mSweepAngle:F
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$500(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v3

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastSweepAngle:F
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$602(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 193
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mStartAngle:F
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$300(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v3

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastStartAngle:F
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$402(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 194
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mStartAngle:F
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$300(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v3

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mExtraStartAngle:F
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$802(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 195
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mStartAngle:F
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$300(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v3

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mLastExtraStartAngle:F
    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$902(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$5;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->invalidateSelf()V

    .line 198
    return-void
.end method
