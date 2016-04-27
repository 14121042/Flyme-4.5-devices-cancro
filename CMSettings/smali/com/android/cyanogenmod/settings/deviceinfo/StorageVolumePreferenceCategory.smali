.class public Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mItemApps:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 143
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 144
    invoke-static {p1, p2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    .line 145
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    .line 146
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 149
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 150
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 152
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    :cond_1
    move v0, v1

    .line 145
    goto :goto_0

    .line 152
    :cond_2
    const v0, 0x7f090886

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 137
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 157
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 614
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 615
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 616
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 620
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->onMeasure()V

    .line 506
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 507
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 508
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 450
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 451
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 452
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 495
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 496
    invoke-direct {p0, p2, p3}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 498
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 502
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    .prologue
    const v8, 0x7f09076e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v3, 0x0

    .line 322
    .local v3, "titleResId":I
    const/4 v2, 0x0

    .line 324
    .local v2, "summaryResId":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    const v5, 0x7f09075b

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 336
    :goto_1
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 338
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 341
    const v3, 0x7f090241

    .line 342
    const v2, 0x7f090242

    .line 353
    :goto_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 354
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 356
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    :goto_3
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v4, :cond_10

    const-string v4, "mtp"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ptp"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 410
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    :cond_5
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 416
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    :cond_6
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    const v5, 0x7f09075a

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 344
    :cond_7
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 345
    const v3, 0x7f090248

    .line 346
    const v2, 0x7f090249

    goto :goto_2

    .line 349
    :cond_8
    const v3, 0x7f09023a

    .line 350
    const v2, 0x7f09023b

    goto/16 :goto_2

    .line 360
    :cond_9
    const-string v4, "unmounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "nofs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 362
    :cond_a
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 364
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 365
    const v3, 0x7f090245

    .line 366
    const v2, 0x7f090246

    .line 377
    :goto_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    :goto_5
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 368
    :cond_b
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 369
    const v3, 0x7f09024c

    .line 370
    const v2, 0x7f09024d

    goto :goto_4

    .line 373
    :cond_c
    const v3, 0x7f09023e

    .line 374
    const v2, 0x7f09023f

    goto :goto_4

    .line 381
    :cond_d
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 384
    const v3, 0x7f090245

    .line 385
    const v2, 0x7f090247

    .line 396
    :goto_6
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 387
    :cond_e
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 388
    const v3, 0x7f09024c

    .line 389
    const v2, 0x7f09024e

    goto :goto_6

    .line 392
    :cond_f
    const v3, 0x7f09023e

    .line 393
    const v2, 0x7f090240

    goto :goto_6

    .line 418
    :cond_10
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 419
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 422
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f090244

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 424
    :cond_11
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 425
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f09024b

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 428
    :cond_12
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f09023d

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 26

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 163
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 167
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 172
    .local v10, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v16

    .line 173
    .local v16, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_5

    const/16 v19, 0x1

    .line 175
    .local v19, "showUsers":Z
    :goto_0
    const/4 v5, 0x0

    .line 176
    .local v5, "allowMediaScan":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v23

    if-nez v23, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 177
    :cond_1
    const/4 v5, 0x1

    .line 182
    :cond_2
    :goto_1
    new-instance v23, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    const/16 v24, -0x2

    invoke-virtual/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->setOnRequestMediaRescanListener(Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->setAllowMediaScan(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    const v23, 0x7f09075c

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 189
    const v23, 0x7f09075a

    const v24, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    const v23, 0x7f09075e

    const v24, 0x7f080036

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 194
    const v23, 0x7f090761

    const v24, 0x7f080038

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 195
    const v23, 0x7f090762

    const v24, 0x7f080039

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 196
    const v23, 0x7f090760

    const v24, 0x7f080037

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 197
    const v23, 0x7f090764

    const v24, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 198
    const v23, 0x7f090763

    const v24, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    const-string v24, "cache"

    invoke-virtual/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_3
    const/16 v18, 0x1

    .line 203
    .local v18, "showDetails":Z
    :goto_2
    if-eqz v18, :cond_9

    .line 204
    if-eqz v19, :cond_4

    .line 205
    new-instance v23, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    if-eqz v19, :cond_9

    .line 216
    new-instance v23, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v24, 0x7f090780

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    const/4 v8, 0x0

    .line 219
    .local v8, "count":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 220
    .local v13, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "count":I
    .local v9, "count":I
    rem-int/lit8 v23, v8, 0x2

    if-nez v23, :cond_8

    const v6, 0x7f08003c

    .line 222
    .local v6, "colorRes":I
    :goto_4
    new-instance v22, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v23

    iget-object v0, v13, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 224
    .local v22, "userPref":Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v8, v9

    .line 226
    .end local v9    # "count":I
    .restart local v8    # "count":I
    goto :goto_3

    .line 168
    .end local v5    # "allowMediaScan":Z
    .end local v6    # "colorRes":I
    .end local v8    # "count":I
    .end local v10    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Landroid/content/pm/UserInfo;
    .end local v16    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v18    # "showDetails":Z
    .end local v19    # "showUsers":Z
    .end local v22    # "userPref":Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v11

    .line 169
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "Failed to get current user"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 173
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v10    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v16    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 178
    .restart local v5    # "allowMediaScan":Z
    .restart local v19    # "showUsers":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v23

    if-nez v23, :cond_2

    .line 179
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 202
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 220
    .restart local v9    # "count":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "info":Landroid/content/pm/UserInfo;
    .restart local v18    # "showDetails":Z
    :cond_8
    const v6, 0x7f08003d

    goto :goto_4

    .line 230
    .end local v9    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Landroid/content/pm/UserInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v15

    .line 231
    .local v15, "isRemovable":Z
    :goto_5
    const/4 v14, 0x1

    .line 233
    .local v14, "isAccessible":Z
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 237
    const/16 v21, 0x0

    .line 238
    .local v21, "titleResId":I
    const/16 v20, 0x0

    .line 240
    .local v20, "summaryResId":I
    if-eqz v15, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 244
    const v21, 0x7f090241

    .line 245
    const v20, 0x7f090242

    .line 258
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 261
    if-eqz v14, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    const/4 v4, 0x1

    .line 267
    .local v4, "allowFormat":Z
    :goto_7
    if-eqz v4, :cond_b

    .line 268
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 272
    const v21, 0x7f090243

    .line 273
    const v20, 0x7f090244

    .line 288
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 296
    .local v17, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 297
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOrder(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f090776

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setTitle(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f090777

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :cond_c
    :goto_9
    return-void

    .line 230
    .end local v4    # "allowFormat":Z
    .end local v14    # "isAccessible":Z
    .end local v15    # "isRemovable":Z
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "summaryResId":I
    .end local v21    # "titleResId":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 247
    .restart local v14    # "isAccessible":Z
    .restart local v15    # "isRemovable":Z
    .restart local v20    # "summaryResId":I
    .restart local v21    # "titleResId":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 248
    const v21, 0x7f090248

    .line 249
    const v20, 0x7f090249

    goto/16 :goto_6

    .line 252
    :cond_f
    const v21, 0x7f09023a

    .line 253
    const v20, 0x7f09023b

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x112003d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    goto/16 :goto_6

    .line 266
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 275
    .restart local v4    # "allowFormat":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 276
    const v21, 0x7f09024a

    .line 277
    const v20, 0x7f09024b

    goto/16 :goto_8

    .line 279
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 280
    const v21, 0x7f090269

    .line 281
    const v20, 0x7f09026a

    goto/16 :goto_8

    .line 284
    :cond_13
    const v21, 0x7f09023c

    .line 285
    const v20, 0x7f09023d

    goto/16 :goto_8

    .line 302
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    :cond_14
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    .line 306
    :catch_1
    move-exception v23

    goto/16 :goto_9
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 560
    const/4 v1, 0x0

    .line 565
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 566
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/cyanogenmod/settings/MediaFormat;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    :cond_0
    :goto_0
    return-object v1

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v2, :cond_2

    .line 570
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/cyanogenmod/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 572
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v2, :cond_3

    .line 573
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v2, :cond_4

    .line 576
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "audio/mp3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 578
    :cond_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v2, :cond_5

    .line 579
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 582
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 583
    :cond_5
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v2, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 585
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/cyanogenmod/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 532
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 528
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 536
    return-void
.end method

.method public onRequestMediaRescan()V
    .locals 5

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "path":Ljava/io/File;
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    if-eqz v1, :cond_2

    .line 627
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 632
    :goto_0
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request scan of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 635
    return-void

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 512
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 513
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 639
    if-eqz p2, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 517
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 518
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 522
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 524
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    iput-wide p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 439
    sub-long v0, p1, p3

    .line 441
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 442
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 443
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 445
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 446
    return-void
.end method

.method public updateDetails(Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 460
    .local v7, "showDetails":Z
    :goto_0
    if-nez v7, :cond_2

    .line 492
    :goto_1
    return-void

    .line 459
    .end local v7    # "showDetails":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 463
    .restart local v7    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 468
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 470
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 472
    .local v2, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 474
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 477
    .local v8, "musicSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 479
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 480
    .local v4, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 482
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;

    .line 486
    .local v10, "userPref":Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 487
    .local v12, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 490
    .end local v10    # "userPref":Lcom/android/cyanogenmod/settings/deviceinfo/StorageItemPreference;
    .end local v12    # "userSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 491
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method
