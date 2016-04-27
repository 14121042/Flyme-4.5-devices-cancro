.class final Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$3;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/cyanogenmod/settings/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p2, "rhs"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 317
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 318
    .local v0, "lwc":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 321
    .local v1, "rwc":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    .line 324
    :cond_2
    iget v4, p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    iget v5, p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ge v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 325
    :cond_3
    iget v3, p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    iget v4, p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-gt v3, v4, :cond_0

    .line 326
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 314
    check-cast p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    check-cast p2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {p0, p1, p2}, Lcom/android/cyanogenmod/settings/wifi/SavedAccessPointsWifiSettings$3;->compare(Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method
