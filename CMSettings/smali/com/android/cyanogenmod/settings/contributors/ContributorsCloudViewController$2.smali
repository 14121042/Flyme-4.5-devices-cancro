.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ContributorsCloudViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$100(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->access$100(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController$2;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 305
    :cond_0
    return-void
.end method
