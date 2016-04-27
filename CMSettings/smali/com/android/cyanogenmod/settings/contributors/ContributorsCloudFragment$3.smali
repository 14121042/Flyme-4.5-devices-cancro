.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;
.super Ljava/lang/Object;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

.field final synthetic val$dst:Landroid/view/View;

.field final synthetic val$src:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$src:Landroid/view/View;

    iput-object p3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$dst:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 440
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$src:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 431
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$src:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 424
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$dst:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 425
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$src:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$3;->val$dst:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    return-void
.end method
