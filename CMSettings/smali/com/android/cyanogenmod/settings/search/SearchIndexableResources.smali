.class public final Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x7f0200b1

    const v9, 0x7f0200a5

    const v6, 0x7f0200c9

    const v8, 0x7f0200c0

    const v7, 0x7f0200b9

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f060062

    const-class v5, Lcom/android/cyanogenmod/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200cc

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/deviceinfo/Memory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f060059

    const-class v5, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f060032

    const-class v5, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f06005b

    const-class v5, Lcom/android/cyanogenmod/settings/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f06002a

    const-class v5, Lcom/android/cyanogenmod/settings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/voice/VoiceInputSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/voice/VoiceInputSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/voice/VoiceInputSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009d

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f060016

    const-class v5, Lcom/android/cyanogenmod/settings/DateTimeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009a

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020099

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/ButtonSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f06004f

    const-class v5, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ac

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f06002d

    const-class v5, Lcom/android/cyanogenmod/settings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/cyanogenmod/settings/cyanogenmod/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200bd

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
