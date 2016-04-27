.class public Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 562
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 556
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 558
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 560
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 547
    .local v0, "ad":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    .end local v0    # "ad":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 545
    .restart local v0    # "ad":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "ad":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 426
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    iput-object v6, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    iput-object v6, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 441
    :cond_2
    iput v5, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 443
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 444
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/cyanogenmod/settings/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 446
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 448
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 453
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 450
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 455
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 456
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 459
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V

    .line 462
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 395
    if-eqz p1, :cond_1

    .line 396
    if-eqz p2, :cond_0

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 398
    iget-object v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 403
    iget-object v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 407
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V

    .line 423
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 407
    goto :goto_1

    .line 411
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    .line 414
    .local v1, "pi":Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 411
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    .end local v1    # "pi":Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 418
    .restart local v1    # "pi":Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .param p1, "pi"    # Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    const/4 v12, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 337
    new-instance v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;)V

    .line 338
    .local v2, "detail":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400d8

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 340
    .local v5, "root":Landroid/view/View;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 341
    iput-object v5, v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 342
    new-instance v9, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    .line 343
    iget-object v9, v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/cyanogenmod/settings/applications/RunningState;Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    .line 345
    const v9, 0x7f100219

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    .local v1, "description":Landroid/widget/TextView;
    iget v9, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 349
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void

    .line 350
    :cond_1
    if-eqz p2, :cond_2

    .line 351
    const v9, 0x7f0908dd

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 353
    :cond_2
    const/4 v8, 0x0

    .line 354
    .local v8, "textid":I
    const/4 v3, 0x0

    .line 355
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 356
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 359
    .local v0, "comp":Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 385
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :pswitch_0
    const v8, 0x7f0908df

    .line 362
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 366
    .local v4, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/cyanogenmod/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 373
    .end local v4    # "prov":Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0908de

    .line 374
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 376
    :try_start_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 378
    .local v7, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/cyanogenmod/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 380
    .end local v7    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 368
    :catch_1
    move-exception v9

    goto :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 235
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400e3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0908d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 242
    return-void
.end method

.method addServiceDetailsView(Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 12
    .param p1, "si"    # Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 246
    if-eqz p3, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addServicesHeader()V

    .line 256
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 258
    .local v0, "bi":Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;)V

    .line 259
    .local v4, "detail":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400d9

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 261
    .local v7, "root":Landroid/view/View;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    iput-object v7, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 263
    iput-object p1, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;

    .line 264
    new-instance v8, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v7}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    .line 265
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/cyanogenmod/settings/applications/RunningState;Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    .line 267
    if-nez p4, :cond_1

    .line 268
    const v8, 0x7f100218

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_2

    .line 272
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v9, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 276
    :cond_2
    const v8, 0x7f100219

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 277
    .local v3, "description":Landroid/widget/TextView;
    const v8, 0x7f100146

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 278
    const v8, 0x7f100148

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 280
    if-eqz p3, :cond_5

    iget v8, p2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 284
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    const v8, 0x7f100117

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    return-void

    .line 248
    .end local v0    # "bi":Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;
    .end local v3    # "description":Landroid/widget/TextView;
    .end local v4    # "detail":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    .end local v7    # "root":Landroid/view/View;
    :cond_3
    iget v8, p2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 256
    goto/16 :goto_1

    .line 287
    .restart local v0    # "bi":Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;
    .restart local v3    # "description":Landroid/widget/TextView;
    .restart local v4    # "detail":Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v7    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v11, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_3
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v9, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_a

    const v8, 0x7f0908d8

    :goto_4
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x1040565

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "enabled":I
    if-eqz p1, :cond_b

    iget-object v8, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_b

    const/4 v1, 0x1

    .line 321
    .local v1, "canReport":Z
    :goto_5
    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    .line 322
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 325
    iget-object v9, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 292
    .end local v1    # "canReport":Z
    .end local v5    # "enabled":I
    :cond_6
    iget-boolean v8, p2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v8, :cond_7

    .line 293
    const v8, 0x7f0908db

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 294
    :cond_7
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_8

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 298
    .local v2, "clientr":Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/cyanogenmod/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0908dc

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 301
    .end local v2    # "clientr":Landroid/content/res/Resources;
    .end local v6    # "label":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 304
    :cond_8
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_9

    const v8, 0x7f0908d9

    :goto_7
    invoke-virtual {v9, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v8, 0x7f0908da

    goto :goto_7

    .line 311
    :cond_a
    const v8, 0x7f0908d7

    goto/16 :goto_4

    .line 319
    .restart local v5    # "enabled":I
    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    .line 325
    .restart local v1    # "canReport":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 327
    :cond_d
    iget-object v8, v4, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 225
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400e3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0908d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 232
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 608
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 609
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 610
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/applications/RunningState;->resume(Lcom/android/cyanogenmod/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 615
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/RunningState;->waitForData()V

    .line 619
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 621
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "item":Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 202
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    .line 203
    .local v2, "mi":Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 206
    .restart local v0    # "i":I
    .restart local v2    # "mi":Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    .restart local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 209
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/cyanogenmod/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    :cond_4
    move-object v1, v2

    .line 217
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 218
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    .line 219
    const/4 v4, 0x1

    .line 221
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mUid:I

    .line 503
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mUserId:I

    .line 504
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 507
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 508
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 510
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    .line 511
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 516
    const v1, 0x7f0400d7

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/cyanogenmod/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 519
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 520
    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 521
    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 522
    new-instance v1, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    .line 526
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->ensureData()V

    .line 528
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 535
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/RunningState;->pause()V

    .line 536
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 635
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 637
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 640
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 641
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 644
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 541
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->ensureData()V

    .line 542
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 p1, 0x1

    .line 468
    :cond_0
    if-eqz p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mState:Lcom/android/cyanogenmod/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/cyanogenmod/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/cyanogenmod/settings/applications/RunningState;Lcom/android/cyanogenmod/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->addDetailViews()V

    .line 484
    :cond_1
    :goto_1
    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0908d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 627
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_1
    return-void
.end method
