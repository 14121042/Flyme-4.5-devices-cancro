.class public Lcom/android/cyanogenmod/settings/deviceinfo/Memory;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/cyanogenmod/settings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$1;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 283
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$2;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 141
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09025b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 368
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 369
    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f090774

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f090775

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    return-void

    .line 357
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09025c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09025a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 372
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 232
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 239
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 236
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 384
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 385
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 386
    .local v1, "stUsers":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 400
    :cond_0
    return v3
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 422
    .local v0, "mountService":Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 423
    :try_start_0
    sget-object v1, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 434
    .local v0, "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 436
    .end local v0    # "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->showDialog(I)V

    .line 381
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 417
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 96
    .local v1, "context":Landroid/content/Context;
    const-string v8, "usb"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 98
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 99
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 101
    const v8, 0x7f060018

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 103
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->addCategory(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 105
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 106
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 110
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 113
    const-string v8, "persist.sys.isUICCEnabled"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 114
    .local v6, "uiccStatus":Z
    const-string v8, "persist.sys.isUsbOtgEnabled"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 117
    .local v3, "isOtgSupported":Z
    invoke-static {v7, v1}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uicc1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 119
    :cond_1
    const-string v8, "MemorySettings"

    const-string v9, "Hardware has UICC disabled, Hiding UICC UI"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v3    # "isOtgSupported":Z
    .end local v6    # "uiccStatus":Z
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .restart local v3    # "isOtgSupported":Z
    .restart local v6    # "uiccStatus":Z
    :cond_3
    invoke-static {v7, v1}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_4

    .line 125
    const-string v8, "MemorySettings"

    const-string v9, "Hardware has USB OTG not supported, Hiding OTG UI"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_4
    invoke-static {v1, v7}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->addCategory(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    goto :goto_1

    .line 134
    .end local v3    # "isOtgSupported":Z
    .end local v6    # "uiccStatus":Z
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 135
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f09088b

    const/4 v3, 0x0

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    return-object v3

    .line 306
    :pswitch_0
    const v2, 0x7f090251

    .line 307
    .local v2, "titleResId":I
    const v1, 0x7f090254

    .line 310
    .local v1, "messageResId":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    const v2, 0x7f090252

    .line 312
    const v1, 0x7f090255

    .line 319
    :cond_0
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$3;

    invoke-direct {v5, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$3;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0904d8

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 314
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    const v2, 0x7f090253

    .line 316
    const v1, 0x7f090256

    goto :goto_1

    .line 331
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :pswitch_1
    const v0, 0x7f090257

    .line 334
    .local v0, "errMessageResId":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    const v0, 0x7f090258

    .line 341
    :cond_2
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090771

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 337
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    const v0, 0x7f090259

    goto :goto_2

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 201
    const v0, 0x7f11000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 197
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f090779

    const/4 v2, 0x0

    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    const-class v1, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 225
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    const-class v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x7f100336
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 185
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 187
    .local v0, "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 189
    .end local v0    # "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 244
    const-string v7, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/cyanogenmod/settings/deviceinfo/Memory;)V

    .line 280
    :cond_0
    :goto_0
    return v6

    .line 249
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 250
    .local v1, "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 251
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 253
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 264
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    sput-object p2, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 266
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 267
    iput-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 269
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 272
    :cond_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 274
    :cond_5
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 280
    .end local v1    # "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 206
    const v3, 0x7f100336

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 207
    .local v1, "usb":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 208
    .local v0, "um":Landroid/os/UserManager;
    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 210
    .local v2, "usbItemVisible":Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    return-void

    .line 208
    .end local v2    # "usbItemVisible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 163
    .local v0, "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 165
    .end local v0    # "category":Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method
