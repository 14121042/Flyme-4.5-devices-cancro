.class Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ExpandedDesktopPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mode:Landroid/widget/Spinner;

.field private rootView:Landroid/view/View;

.field private stateIcon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const v0, 0x7f100011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f100100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;

    .line 501
    const v0, 0x7f100010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 502
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    .line 503
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;

    .line 505
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$1;

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method
