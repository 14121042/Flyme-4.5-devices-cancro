.class public Lcom/android/cyanogenmod/settings/TetherSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

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

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    .line 209
    new-instance v0, Lcom/android/cyanogenmod/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/TetherSettings$1;-><init>(Lcom/android/cyanogenmod/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isBtPanAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/cyanogenmod/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/cyanogenmod/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/cyanogenmod/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 661
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 662
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 667
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 661
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 667
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0906a6

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 191
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 192
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 194
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 196
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 197
    const v3, 0x1040597

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 203
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isBtPanAllowed()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 598
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 599
    .local v0, "btPan":Landroid/bluetooth/BluetoothPan;
    if-nez v0, :cond_0

    .line 607
    .end local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :goto_0
    return v2

    .line 602
    .restart local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    const/4 v2, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "btPan":Landroid/bluetooth/BluetoothPan;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 504
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provisionApp length should at least be 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 507
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 516
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "provisionApp":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 586
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 588
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0907d4

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 707
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 708
    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    .line 707
    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    .line 708
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 524
    iput p1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    .line 525
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0, v4}, Lcom/android/cyanogenmod/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 558
    iget v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 583
    :goto_0
    return-void

    .line 560
    :pswitch_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 565
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 566
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 567
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 568
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f090472

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 569
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 572
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isBtPanAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0907d6

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 577
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 436
    const/4 v6, 0x0

    .line 437
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 438
    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 439
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 438
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 437
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 443
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 444
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 479
    :goto_2
    return-void

    .line 446
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 447
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090473

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 450
    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090472

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 454
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 455
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isBtPanAllowed()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 459
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 460
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 461
    const v17, 0x7f0907d8

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 464
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 465
    .end local v16    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0907d7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 468
    :cond_7
    if-eqz v6, :cond_8

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0907db

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 471
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0907d6

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 474
    .end local v8    # "bluetoothTethered":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0907da

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 363
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 366
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 381
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 383
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 384
    .local v9, "usbAvailable":Z
    :goto_0
    const/4 v10, 0x0

    .line 385
    .local v10, "usbError":I
    move-object/from16 v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 386
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 387
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 388
    if-nez v10, :cond_0

    .line 389
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 386
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 383
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "usbAvailable":Z
    .end local v10    # "usbError":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 385
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "usbAvailable":Z
    .restart local v10    # "usbError":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 394
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 395
    .local v12, "usbTethered":Z
    move-object/from16 v0, p2

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 396
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 397
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 396
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 395
    .end local v7    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 400
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 401
    .local v11, "usbErrored":Z
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 402
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 403
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 402
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 401
    .end local v7    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 407
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 408
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907d0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 409
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 410
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 432
    :goto_7
    return-void

    .line 411
    :cond_a
    if-eqz v9, :cond_c

    .line 412
    if-nez v10, :cond_b

    .line 413
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907cf

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 417
    :goto_8
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 418
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 415
    :cond_b
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907d4

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 419
    :cond_c
    if-eqz v11, :cond_d

    .line 420
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907d4

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 421
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 422
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 423
    :cond_d
    iget-boolean v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 424
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907d1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 425
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 426
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 428
    :cond_e
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0907d2

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 429
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 430
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 695
    const v0, 0x7f090c6b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 536
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 537
    if-nez p1, :cond_0

    .line 538
    if-ne p2, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 540
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->startTethering()V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_1
    iput v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 546
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 549
    :pswitch_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 671
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 673
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 680
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 681
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 685
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 686
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0906a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    .line 120
    :cond_0
    const v8, 0x7f060053

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 122
    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 124
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    iput-boolean v9, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUnavailable:Z

    .line 126
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 180
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 132
    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 133
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 134
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 136
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 138
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 143
    :cond_2
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 144
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 147
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 148
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 149
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 151
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v5, v9

    .line 152
    .local v5, "usbAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v7, v9

    .line 153
    .local v7, "wifiAvailable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    move v2, v9

    .line 155
    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_4
    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_8

    .line 160
    new-instance v8, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    .line 161
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->initWifiTethering()V

    .line 167
    :goto_4
    if-nez v2, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :goto_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070020

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_5
    move v5, v10

    .line 151
    goto :goto_1

    .restart local v5    # "usbAvailable":Z
    :cond_6
    move v7, v10

    .line 152
    goto :goto_2

    .restart local v7    # "wifiAvailable":Z
    :cond_7
    move v2, v10

    .line 153
    goto :goto_3

    .line 163
    .restart local v2    # "bluetoothAvailable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 170
    :cond_9
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 171
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isBtPanAllowed()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 172
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 174
    :cond_a
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 229
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;

    .line 232
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;

    .line 235
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 482
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 484
    .local v0, "enable":Z
    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 492
    :goto_0
    return v2

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 612
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 615
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_3

    .line 616
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .line 618
    .local v5, "newState":Z
    if-eqz v5, :cond_1

    .line 619
    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 656
    .end local v5    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 621
    .restart local v5    # "newState":Z
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/cyanogenmod/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 624
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 626
    .end local v5    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_9

    .line 627
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 629
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_4

    .line 630
    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 632
    :cond_4
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/cyanogenmod/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/cyanogenmod/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 635
    :cond_5
    const/4 v4, 0x0

    .line 637
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/cyanogenmod/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 641
    const/4 v4, 0x1

    .line 644
    :cond_6
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 645
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->isBtPanAllowed()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 646
    :cond_7
    if-eqz v4, :cond_8

    .line 647
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0907db

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 649
    :cond_8
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0907da

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 652
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    .line 653
    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 290
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 292
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUnavailable:Z

    if-eqz v6, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 295
    if-eqz v1, :cond_0

    .line 296
    const v6, 0x7f090936

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 345
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 302
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_6

    .line 303
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 304
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_4

    .line 305
    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    .line 320
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    new-instance v6, Lcom/android/cyanogenmod/settings/TetherSettings$TetherChangeReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/cyanogenmod/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/cyanogenmod/settings/TetherSettings;Lcom/android/cyanogenmod/settings/TetherSettings$1;)V

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 324
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 332
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 339
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    if-eqz v6, :cond_3

    .line 340
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;->resume()V

    .line 344
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->updateState()V

    goto :goto_0

    .line 307
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 309
    .local v4, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 310
    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    goto :goto_1

    .line 312
    :cond_5
    const-string v7, "shared"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    goto/16 :goto_1

    .line 317
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mMassStorageActive:Z

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStop()V

    .line 351
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/TetherSettings;->mWifiApEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiApEnabler;->pause()V

    goto :goto_0
.end method
