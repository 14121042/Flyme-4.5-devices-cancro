.class public Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/cyanogenmod/settings/applications/AppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mTotalStorage:J


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "owner"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;
    .param p2, "apps"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "listType"    # I
    .param p5, "clickListener"    # Lcom/android/cyanogenmod/settings/applications/AppClickListener;
    .param p6, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v0, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 229
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 238
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .line 239
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    .line 240
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 241
    iput p4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    .line 242
    packed-switch p4, :pswitch_data_0

    .line 246
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    .line 248
    :goto_0
    iput-object p5, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/cyanogenmod/settings/applications/AppClickListener;

    .line 249
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09089d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09089c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 251
    iput-object p6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 252
    return-void

    .line 243
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 245
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 443
    :cond_0
    return-void
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "contentParent"    # Landroid/view/ViewGroup;
    .param p3, "contentChild"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 260
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 305
    :goto_0
    return-object v2

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 264
    iget v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_5

    const v2, 0x7f04007b

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 267
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f10014a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 268
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f100149

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 270
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 274
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 277
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 279
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 280
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 281
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 282
    new-instance v2, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    iget v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 283
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v2, v5}, Lcom/android/cyanogenmod/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 290
    iget v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 299
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f100150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    .line 301
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    if-eqz v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 264
    :cond_5
    const v2, 0x7f040078

    goto/16 :goto_1
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/cyanogenmod/settings/applications/AppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/cyanogenmod/settings/applications/AppClickListener;->onItemClick(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 448
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->doPause()V

    .line 339
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 345
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 5
    .param p1, "sortOrder"    # I

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 323
    .local v0, "haveData":Z
    if-eqz v0, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .end local v0    # "haveData":Z
    :cond_1
    :goto_0
    return-void

    .line 327
    .restart local v0    # "haveData":Z
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "containerService"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 256
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 257
    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 349
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    .line 353
    iput-wide v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 354
    iput-wide v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 355
    iput-wide v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 357
    iget v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 358
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    .line 360
    :try_start_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 362
    .local v5, "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 363
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v5    # "stats":[J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_7

    .line 370
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 371
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_7

    .line 372
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 373
    .local v1, "ae":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 364
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 378
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_4

    .line 380
    :try_start_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 382
    .restart local v5    # "stats":[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 383
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    .end local v5    # "stats":[J
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 390
    .local v3, "emulatedStorage":Z
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_6

    .line 391
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 392
    .restart local v0    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_6

    .line 393
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 394
    .restart local v1    # "ae":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v10, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 395
    if-eqz v3, :cond_5

    .line 396
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 392
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 384
    .end local v0    # "N":I
    .end local v1    # "ae":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v3    # "emulatedStorage":Z
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    .line 385
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 400
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "emulatedStorage":Z
    :cond_6
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 403
    .end local v3    # "emulatedStorage":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
