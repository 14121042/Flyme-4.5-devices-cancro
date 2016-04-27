.class public Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
.super Landroid/support/v7/widget/CardView;
.source "ColoringCardView.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 58
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 49
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method
