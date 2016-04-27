.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;
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
    .line 142
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mCurrentArrowDelta:F
    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$102(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)F

    .line 146
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mCurrentArrowDelta:F
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$100(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;)F

    move-result v1

    # invokes: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->createArrowPath(F)V
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$200(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;F)V

    .line 147
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$2;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->invalidateSelf()V

    .line 148
    return-void
.end method
