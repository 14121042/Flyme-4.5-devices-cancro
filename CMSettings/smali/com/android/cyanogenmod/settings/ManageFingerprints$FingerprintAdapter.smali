.class public Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;
    }
.end annotation


# instance fields
.field private mFingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mFpManager:Landroid/service/fingerprint/FingerprintManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 307
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 311
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 312
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    .line 314
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mRes:Landroid/content/res/Resources;

    .line 316
    return-void
.end method

.method private createFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 393
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040063

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;-><init>()V

    .line 395
    .local v0, "holder":Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    const v2, 0x7f10002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    .line 397
    const v2, 0x7f10010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    .line 398
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 356
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumFingerprints()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 362
    if-nez p2, :cond_0

    .line 363
    invoke-direct {p0, p3}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->createFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 365
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;

    .line 366
    .local v1, "holder":Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->getItemViewType(I)I

    move-result v2

    .line 367
    .local v2, "viewType":I
    if-nez v2, :cond_1

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 369
    .local v0, "fingerprintInfo":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    .end local v0    # "fingerprintInfo":Landroid/hardware/fingerprint/Fingerprint;
    :goto_0
    return-object p2

    .line 372
    :cond_1
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    const v4, 0x7f090396

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 376
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 377
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 380
    iget-object v3, v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 321
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 322
    return-void
.end method
