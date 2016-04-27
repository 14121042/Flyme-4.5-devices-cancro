.class final Lcom/android/cyanogenmod/settings/deviceinfo/Memory$4;
.super Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f090740

    .line 503
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 507
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 508
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 511
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090886

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 512
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 513
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 516
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 517
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 518
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 519
    invoke-virtual {v6, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 520
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 521
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 526
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f09075c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 527
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 528
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 531
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f09075a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 532
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 533
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 536
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f09075e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 537
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 538
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 541
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090761

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 542
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 543
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 546
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090762

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 547
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 548
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 551
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090760

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 552
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 553
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 556
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090764

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 557
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 558
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 561
    .restart local v1    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const v7, 0x7f090763

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 562
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 563
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    return-object v4
.end method
