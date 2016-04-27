.class public final Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;
.super Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 600
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 105
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 120
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 480
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;)Lcom/android/cyanogenmod/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$300()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 73
    sput-object p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object p0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 340
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    invoke-virtual {p0, p3}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 344
    if-eqz p4, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 347
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 348
    return-void
.end method

.method private isBtPanAllowed()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 469
    .local v0, "btPan":Landroid/bluetooth/BluetoothPan;
    if-nez v0, :cond_0

    .line 477
    .end local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :goto_0
    return v2

    .line 472
    .restart local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    const/4 v2, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 311
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 317
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 326
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 328
    :cond_3
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 329
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 352
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 354
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 439
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 443
    :cond_1
    :goto_1
    return-void

    .line 356
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 357
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 358
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 360
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const v0, 0x7f090451

    .line 362
    goto :goto_0

    .line 366
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_7

    .line 367
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 371
    :goto_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f09059c

    sget-object v6, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v8}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 374
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 376
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    if-gtz v2, :cond_4

    .line 377
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_8

    .line 382
    new-instance v4, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 383
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 387
    :goto_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f09059d

    sget-object v6, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/cyanogenmod/settings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 390
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 392
    .local v1, "numberOfAvailableDevices":I
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_5

    .line 393
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 396
    :cond_5
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 397
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 400
    :cond_6
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090452

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 403
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 409
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_1

    .line 411
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 412
    iput-boolean v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 369
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_7
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 385
    .restart local v2    # "numberOfPairedDevices":I
    :cond_8
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 417
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f090473

    .line 418
    goto/16 :goto_0

    .line 422
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_9

    .line 423
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v9}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 425
    :cond_9
    const v0, 0x7f0905a7

    .line 426
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    const v0, 0x7f090451

    goto/16 :goto_0

    .line 432
    :pswitch_3
    const v0, 0x7f090472

    .line 433
    iput-boolean v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 184
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 597
    const v0, 0x7f090c62

    return v0
.end method

.method initDevicePreference(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 589
    .local v0, "cachedDevice":Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/SettingsActivity;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 159
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .line 161
    new-instance v1, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-direct {v1, v2, v3}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    .line 162
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 164
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 165
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mActivity:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 170
    :cond_0
    return-void

    .line 152
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 448
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 449
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v9, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v9

    if-nez v9, :cond_0

    .line 239
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_2

    move v0, v7

    .line 240
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    .line 241
    .local v5, "isDiscovering":Z
    if-eqz v5, :cond_3

    const v6, 0x7f090591

    .line 244
    .local v6, "textId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "bluetooth_accept_all_files"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_4

    move v2, v7

    .line 247
    .local v2, "isAcceptAllFilesEnabled":Z
    :goto_3
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 248
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isBtPanAllowed()Z

    move-result v3

    .line 249
    .local v3, "isBluetoothPanAllowed":Z
    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 251
    .local v4, "isBluetoothTetheringEnabled":Z
    :goto_4
    invoke-interface {p1, v8, v7, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    move v9, v7

    :goto_5
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    const/4 v9, 0x2

    const v10, 0x7f09044d

    invoke-interface {p1, v8, v9, v8, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 257
    const/4 v9, 0x3

    const v10, 0x7f090467

    invoke-interface {p1, v8, v9, v8, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 259
    const/4 v9, 0x4

    const v10, 0x7f09022d

    invoke-interface {p1, v8, v9, v8, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 263
    const/4 v9, 0x5

    const v10, 0x7f0907d5

    invoke-interface {p1, v8, v9, v8, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto/16 :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "isAcceptAllFilesEnabled":Z
    .end local v3    # "isBluetoothPanAllowed":Z
    .end local v4    # "isBluetoothTetheringEnabled":Z
    .end local v5    # "isDiscovering":Z
    .end local v6    # "textId":I
    :cond_2
    move v0, v8

    .line 239
    goto/16 :goto_1

    .line 241
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v5    # "isDiscovering":Z
    :cond_3
    const v6, 0x7f090590

    goto/16 :goto_2

    .restart local v6    # "textId":I
    :cond_4
    move v2, v8

    .line 244
    goto :goto_3

    .restart local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .restart local v2    # "isAcceptAllFilesEnabled":Z
    .restart local v3    # "isBluetoothPanAllowed":Z
    :cond_5
    move v4, v8

    .line 249
    goto :goto_4

    .restart local v4    # "isBluetoothTetheringEnabled":Z
    :cond_6
    move v9, v8

    .line 251
    goto :goto_5
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 176
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 177
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 463
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 464
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 335
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothDevicePreference;)V

    .line 336
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 307
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 276
    :pswitch_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 282
    :pswitch_1
    new-instance v2, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "rename device"

    invoke-virtual {v2, v4, v5}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 293
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "bluetooth_accept_all_files"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 292
    goto :goto_1

    .line 299
    :pswitch_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 300
    .local v0, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v4, v3

    :cond_3
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 197
    :cond_1
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 204
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090451

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :cond_2
    :goto_0
    return-void

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 453
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 458
    :cond_0
    return-void
.end method
