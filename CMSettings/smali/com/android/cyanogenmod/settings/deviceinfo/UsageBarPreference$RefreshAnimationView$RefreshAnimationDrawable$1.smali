.class Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


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
    .line 130
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$1;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable$1;->this$1:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;

    # invokes: Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->updateArcAngle(J)V
    invoke-static {v0, p2, p3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;->access$000(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$RefreshAnimationView$RefreshAnimationDrawable;J)V

    .line 135
    return-void
.end method
