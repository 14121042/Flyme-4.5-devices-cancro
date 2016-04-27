.class Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllPackagesAdapter"
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mModesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 363
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    .line 364
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 365
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    invoke-direct {v0, p2, v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mModesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    .line 366
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V

    # setter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
    invoke-static {p1, v0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$402(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    .line 367
    return-void
.end method

.method static synthetic access$1600(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;>;"
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    .line 419
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1300(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1200(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1300(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 423
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    .line 424
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 429
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 459
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, -0x1

    .line 463
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 468
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 469
    :cond_0
    const/4 v0, -0x1

    .line 482
    :cond_1
    :goto_0
    return v0

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 482
    .local v0, "index":I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 392
    if-nez p2, :cond_0

    .line 393
    new-instance v1, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040060

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;-><init>(Landroid/view/View;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V

    .line 394
    .local v1, "holder":Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mModesAdapter:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 395
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 402
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 403
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$600(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;

    move-result-object v2

    .line 413
    :goto_1
    return-object v2

    .line 397
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v1    # "holder":Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .restart local v1    # "holder":Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    goto :goto_0

    .line 406
    .restart local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    :cond_1
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$700(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$800(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;)V

    .line 408
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$900(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getStateForPackage(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1000(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 410
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 411
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->stateIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$1100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getStateForPackage(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1000(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->getStateDrawable(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    # getter for: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->access$600(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 434
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 436
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->removeFromWhiteLists(Ljava/lang/String;)V

    .line 437
    packed-switch p3, :pswitch_data_0

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->save()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;->access$1400(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 451
    return-void

    .line 439
    :pswitch_0
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    .line 446
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
