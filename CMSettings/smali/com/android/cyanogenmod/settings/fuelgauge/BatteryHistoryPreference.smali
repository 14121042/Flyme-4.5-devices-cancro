.class public Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private final mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

.field private final mDockStats:Landroid/os/BatteryStats;

.field private mHideLabels:Z

.field private mLabelHeader:Landroid/view/View;

.field private final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "dockStats"    # Landroid/os/BatteryStats;
    .param p4, "batteryBroadcast"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 47
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 48
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    .line 49
    iput-object p4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    .line 50
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    const v3, 0x7f100022

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    .line 67
    .local v0, "chart":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    if-nez v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 70
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 71
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    .line 83
    :goto_0
    const v3, 0x7f10018e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    .line 84
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 76
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 77
    .local v1, "index":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 78
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 84
    .end local v1    # "index":I
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHideLabels(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eq v0, p1, :cond_0

    .line 54
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    .line 55
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
