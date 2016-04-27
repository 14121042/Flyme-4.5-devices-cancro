.class Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/DraggableSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 72
    if-ne p1, p2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 75
    .local v6, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 78
    .local v3, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v1, "aps":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/wifi/AccessPoint;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 80
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 83
    .local v5, "o":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-interface {v1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 87
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 88
    .local v0, "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 89
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    sub-int v7, v3, v4

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 91
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 95
    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 96
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    const/4 v8, 0x1

    # setter for: Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z
    invoke-static {v7, v8}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->access$102(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;Z)Z

    .line 99
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$1;->this$0:Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    # invokes: Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->access$200(Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;)V

    goto :goto_0
.end method
