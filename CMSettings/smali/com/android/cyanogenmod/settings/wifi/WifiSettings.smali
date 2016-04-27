.class public Lcom/android/cyanogenmod/settings/wifi/WifiSettings;
.super Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field public static mVerboseLogging:I

.field private static savedNetworksExist:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

.field private mWifiFilterState:I

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiToNfcDialog:Lcom/android/cyanogenmod/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 1054
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$6;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$6;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 223
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiFilterState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPoints:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiSettings;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiInfo;
    .param p3, "x3"    # Landroid/net/NetworkInfo;

    .prologue
    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 776
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 929
    :cond_0
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "lastNetworkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings$1;)V

    .line 786
    .local v4, "apMap":Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;, "Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->isIbssSupported()Z

    move-result v10

    .line 788
    .local v10, "ibssSupported":Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 789
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_6

    .line 791
    sget-boolean v14, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x1

    :goto_0
    if-eq v14, v13, :cond_0

    .line 792
    sget-boolean v13, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 793
    instance-of v13, p0, Landroid/app/Activity;

    if-eqz v13, :cond_0

    move-object v13, p0

    .line 794
    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 797
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 798
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v13, v5, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v13, :cond_2

    iget v13, v5, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v13, :cond_1

    .line 801
    :cond_2
    new-instance v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-direct {v2, p0, v5}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 802
    .local v2, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 803
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 805
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v13, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 791
    .end local v2    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 792
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 810
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 811
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v12, :cond_c

    .line 812
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 814
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_7

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_7

    .line 819
    if-nez v10, :cond_8

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[IBSS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 823
    :cond_8
    const/4 v7, 0x0

    .line 824
    .local v7, "found":Z
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 825
    .restart local v2    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v2, v11}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 826
    const/4 v7, 0x1

    goto :goto_4

    .line 828
    .end local v2    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    :cond_a
    if-nez v7, :cond_7

    .line 829
    new-instance v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-direct {v2, p0, v11}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 830
    .restart local v2    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 831
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 833
    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v13, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 840
    .end local v2    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v7    # "found":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 841
    return-object v3
.end method

.method private filterAccessPoints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, "aps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 378
    .local v0, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getSecurity()I

    move-result v4

    .line 379
    .local v4, "security":I
    const/4 v1, 0x0

    .line 380
    .local v1, "add":Z
    iget v7, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiFilterState:I

    packed-switch v7, :pswitch_data_0

    .line 390
    const/4 v1, 0x1

    .line 393
    :goto_1
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :pswitch_0
    if-eq v4, v6, :cond_1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    :cond_1
    move v1, v6

    .line 385
    :goto_2
    goto :goto_1

    :cond_2
    move v1, v5

    .line 382
    goto :goto_2

    .line 387
    :pswitch_1
    if-nez v4, :cond_3

    move v1, v6

    .line 388
    :goto_3
    goto :goto_1

    :cond_3
    move v1, v5

    .line 387
    goto :goto_3

    .line 397
    .end local v0    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v1    # "add":Z
    .end local v4    # "security":I
    :cond_4
    return-object v2

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 845
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateWifiState(I)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 852
    :cond_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 853
    :cond_3
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 854
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 856
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 857
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 858
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 859
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 860
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 5

    .prologue
    .line 754
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f090623

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 756
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 758
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    const v1, 0x7f09060c

    .line 766
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 767
    .local v0, "charSeq":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 770
    .end local v0    # "charSeq":Ljava/lang/CharSequence;
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 771
    return-void

    .line 764
    :cond_1
    const v1, 0x7f09060d

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 630
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    .line 636
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 637
    iput-boolean p2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 639
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(I)V

    .line 640
    return-void
.end method

.method private updateAccessPoints()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints(Ljava/util/Collection;)V

    .line 681
    return-void
.end method

.method private updateAccessPoints(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    const v7, 0x7f090624

    .line 685
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const v3, 0x7f090625

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 691
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 694
    .local v2, "wifiState":I
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v3

    sput v3, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 696
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 738
    :pswitch_0
    const v3, 0x7f0905fc

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 699
    :pswitch_1
    if-nez p1, :cond_5

    .line 700
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v3, v4, v5, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPoints:Ljava/util/Collection;

    .line 702
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPoints:Ljava/util/Collection;

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->filterAccessPoints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 706
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 707
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 708
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPoints:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 709
    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 725
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 727
    .local v0, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 728
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 704
    .end local v0    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->filterAccessPoints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_1

    .line 711
    :cond_6
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiFilterState:I

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 713
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_2

    .line 716
    :pswitch_3
    const v3, 0x7f090382

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_2

    .line 719
    :pswitch_4
    const v3, 0x7f090383

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_2

    .line 734
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0

    .line 742
    :pswitch_6
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 711
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 867
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 868
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 892
    :cond_0
    return-void

    .line 872
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 874
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 879
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 880
    if-eqz p1, :cond_2

    .line 881
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 884
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 886
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 887
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 888
    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 889
    .local v0, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3, v4}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 884
    .end local v0    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 876
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 895
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 896
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 900
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 914
    :goto_0
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 915
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 916
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 917
    :goto_1
    return-void

    .line 902
    :pswitch_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 906
    :pswitch_1
    const v1, 0x7f0905fb

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 910
    :pswitch_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 437
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 439
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f090616

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 443
    sget-boolean v2, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 444
    const/4 v2, 0x3

    const v3, 0x7f09067c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 449
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f090a37

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 452
    const/4 v2, 0x5

    const v3, 0x7f09061d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 455
    return-void

    .line 437
    nop

    :array_0
    .array-data 4
        0x7f010032
        0x7f010034
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1000
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 996
    return-void
.end method

.method createWifiEnabler()Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 364
    .local v0, "activity":Lcom/android/cyanogenmod/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v1

    new-instance v2, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$5;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$5;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->addOnItemSelectedListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;)V

    .line 372
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getSwitchBar()Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 971
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 992
    :goto_1
    return-void

    .line 977
    :cond_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1051
    const v0, 0x7f090c61

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 749
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 750
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 244
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 248
    new-instance v8, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$2;

    invoke-direct {v8, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$2;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 263
    new-instance v8, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$3;

    invoke-direct {v8, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$3;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 278
    new-instance v8, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$4;

    invoke-direct {v8, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$4;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 293
    if-eqz p1, :cond_0

    .line 294
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 295
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 296
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 304
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "wifi_enable_next_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 306
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 310
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 313
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 318
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const v8, 0x7f060066

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 321
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 322
    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 324
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 325
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 327
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 328
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 329
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 330
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v8, :cond_3

    move-object v0, v5

    .line 331
    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 332
    .local v0, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    iget-object v8, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    iget v8, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-eqz v8, :cond_3

    .line 334
    invoke-virtual {p0, v6, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 340
    .end local v0    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v2    # "i":I
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_2
    return-void

    .line 328
    .restart local v2    # "i":I
    .restart local v5    # "preference":Landroid/preference/Preference;
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "ssid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1018
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 1019
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    .line 1020
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 933
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->forget()V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->getController()Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->submit(Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 573
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 574
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 602
    :goto_0
    return v0

    .line 576
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 602
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 578
    :pswitch_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 583
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 590
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 598
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 536
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 540
    .local v1, "preference":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    .line 541
    check-cast v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .end local v1    # "preference":Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 542
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 543
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 545
    const/4 v2, 0x7

    const v3, 0x7f09061e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 549
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    .line 556
    :cond_1
    const/16 v2, 0x8

    const v3, 0x7f090620

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_3

    .line 559
    const/16 v2, 0x9

    const v3, 0x7f090621

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 560
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 561
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    .line 564
    const/16 v2, 0xa

    const v3, 0x7f090622

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 569
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 644
    packed-switch p1, :pswitch_data_0

    .line 672
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 646
    :pswitch_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 647
    .local v0, "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    if-nez v0, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 649
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 651
    .restart local v0    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 653
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 657
    :cond_1
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 658
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    .line 659
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    goto :goto_0

    .line 661
    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    :pswitch_2
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 663
    :pswitch_3
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/cyanogenmod/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 665
    :pswitch_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 666
    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/cyanogenmod/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/cyanogenmod/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 668
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/cyanogenmod/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 429
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 346
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 349
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f090675

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 475
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    :goto_0
    return v6

    .line 477
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 479
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 480
    goto :goto_0

    .line 496
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 497
    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v6, v10

    .line 502
    goto :goto_0

    .line 504
    :pswitch_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v6, v10

    .line 507
    goto :goto_0

    .line 509
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    const-class v1, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 518
    goto :goto_0

    .line 514
    :cond_3
    const-class v0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 520
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 521
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    const-class v1, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090676

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 529
    goto :goto_0

    .line 525
    :cond_4
    const-class v0, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090676

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onPause()V

    .line 415
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->pause()V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 421
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 607
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 608
    check-cast p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 610
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-boolean v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    if-nez v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 615
    sget-boolean v1, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_0

    .line 616
    sput-boolean v0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 626
    :goto_0
    return v0

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 624
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 403
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onResume()V

    .line 404
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 410
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 462
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 466
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 467
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onStart()V

    .line 356
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    .line 357
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1011
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1047
    :cond_0
    return-void
.end method

.method submit(Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    .prologue
    const/4 v2, -0x1

    .line 944
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 946
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 947
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->connect(I)V

    .line 963
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mScanner:Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 967
    return-void

    .line 951
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 952
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 957
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 959
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
