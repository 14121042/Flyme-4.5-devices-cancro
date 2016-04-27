.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$7;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 230
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$7;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$7;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mRunning:Z
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$1002(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;Z)Z

    .line 240
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$7;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    const/4 v1, 0x1

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mRunning:Z
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$1002(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;Z)Z

    .line 234
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$7;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->mRotating:Z
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$702(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;Z)Z

    .line 235
    return-void
.end method
