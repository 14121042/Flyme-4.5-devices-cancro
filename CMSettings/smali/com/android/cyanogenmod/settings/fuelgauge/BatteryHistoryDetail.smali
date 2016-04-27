.class public Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Fragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mDockStats:Landroid/os/BatteryStats;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stats"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "histFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 44
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dock_stats"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "dockHistFile":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "broadcast"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v2, 0x7f040012

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    .line 58
    .local v0, "chart":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 59
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 60
    return-object v1
.end method
