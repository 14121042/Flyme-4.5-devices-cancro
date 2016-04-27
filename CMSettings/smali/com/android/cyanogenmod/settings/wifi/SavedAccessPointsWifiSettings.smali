.class public Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

.field private mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

.field private mPrioritiesOrderChanged:Z

.field private mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

    .line 103
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/cyanogenmod/settings/DraggableSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v10, "resultsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 276
    .local v12, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_4

    .line 278
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 279
    .local v13, "scanResultsSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_1

    .line 280
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 281
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 283
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v7, :cond_0

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .restart local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v10, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    .end local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 292
    .local v4, "configsSize":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 293
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 294
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v14, v2, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v14, :cond_2

    iget v14, v2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v14, :cond_2

    .line 292
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 297
    :cond_2
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    const/4 v14, 0x1

    invoke-direct {v0, p0, v2, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 298
    .local v0, "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setSortPreference(Z)V

    .line 300
    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 301
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_3

    .line 302
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 303
    .local v11, "resultsSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v11, :cond_3

    .line 304
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 308
    .end local v6    # "j":I
    .end local v11    # "resultsSize":I
    :cond_3
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setShowSummary(Z)V

    .line 309
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    .end local v0    # "accessPoint":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "configsSize":I
    .end local v5    # "i":I
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v13    # "scanResultsSize":I
    :cond_4
    new-instance v14, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$3;

    invoke-direct {v14}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$3;-><init>()V

    invoke-static {v1, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    return-object v1
.end method

.method private static getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .restart local v0    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    return-object v0
.end method

.method private initPreferences()V
    .locals 8

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 240
    .local v5, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 242
    .local v3, "context":Landroid/content/Context;
    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 243
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v6}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 246
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 249
    .local v1, "accessPointsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 250
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 251
    .local v2, "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v2, v4}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setOrder(I)V

    .line 252
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 256
    const-string v6, "SavedAccessPointsWifiSettings"

    const-string v7, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    return-void
.end method

.method private isAutoConfigPriorities()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_priority"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 343
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    const v0, 0x7f0902ee

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 169
    if-eqz p1, :cond_1

    .line 170
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 174
    :cond_0
    const-string v0, "priorities_order_changed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->setHasOptionsMenu(Z)V

    .line 180
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v2, 0x0

    .line 380
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 385
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 135
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    .line 347
    packed-switch p1, :pswitch_data_0

    .line 360
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 355
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    .line 357
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    new-instance v0, Lcom/android/cyanogenmod/settings/DraggableSortListView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/DraggableSortListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    .line 159
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DraggableSortListView;->setId(I)V

    .line 160
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/DraggableSortListView;->setDropListener(Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onDetach()V

    .line 186
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 190
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isUiRestricted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 235
    :goto_0
    return v7

    .line 213
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_0

    .line 215
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    .line 218
    .local v1, "autoConfig":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_auto_priority"

    if-eqz v1, :cond_2

    move v8, v6

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    if-eqz v1, :cond_3

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/cyanogenmod/settings/DraggableSortListView;->setDropListener(Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;)V

    .line 221
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 223
    if-nez v1, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 226
    .local v5, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 227
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v3, :cond_4

    .line 228
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 229
    .local v0, "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 230
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v1    # "autoConfig":Z
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "preferences":Landroid/preference/PreferenceScreen;
    :cond_1
    move v1, v7

    .line 215
    goto :goto_1

    .restart local v1    # "autoConfig":Z
    :cond_2
    move v8, v7

    .line 218
    goto :goto_2

    .line 220
    :cond_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

    goto :goto_3

    :cond_4
    move v7, v6

    .line 233
    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onResume()V

    .line 152
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 389
    instance-of v0, p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 390
    check-cast p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 142
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/cyanogenmod/settings/DraggableSortListView;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/DraggableSortListView;->setDropListener(Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 144
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "wifi_auto_priority"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    return-void

    .line 142
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 368
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/cyanogenmod/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 371
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 372
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    :cond_0
    const-string v0, "priorities_order_changed"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    return-void
.end method
