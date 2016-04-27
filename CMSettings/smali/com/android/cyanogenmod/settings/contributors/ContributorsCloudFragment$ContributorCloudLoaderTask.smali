.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
.super Landroid/os/AsyncTask;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContributorCloudLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNavigate:Z

.field private final mNotify:Z

.field private mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;ZZ)V
    .locals 0
    .param p2, "notify"    # Z
    .param p3, "navigate"    # Z

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    iput-boolean p2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    .line 159
    iput-boolean p3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    .line 160
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->loadContributorsInfo(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$200(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    .line 171
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->loadUserInfo(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$300(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    .line 172
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mSelectedContributor:I
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$400(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)I

    move-result v3

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->generateViewInfo(Landroid/content/Context;I)Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;
    invoke-static {v1, v2, v3}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$500(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;I)Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    .line 173
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ContributorsCloud"

    const-string v2, "Failed to generate cloud bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataFailed()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$900(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    .line 210
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$600(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$700(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->update()V

    .line 188
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    .line 189
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget v1, v1, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusX:F

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget v2, v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusY:F

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataSuccess(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$800(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;FF)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataSuccess(FF)V
    invoke-static {v0, v2, v2}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$800(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;FF)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$600(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mViewController:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$700(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudViewController;->update()V

    .line 198
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    :cond_3
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # invokes: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->onLoadCloudDataFailed()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$900(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    # getter for: Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;->access$100(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 165
    return-void
.end method
