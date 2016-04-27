.class public Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mStatusBarAmPm:Landroid/preference/ListPreference;

.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

.field private mStatusBarClock:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableStatusBarBatteryDependents(I)V
    .locals 2
    .param p1, "batteryIconStyle"    # I

    .prologue
    .line 154
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v5, 0x7f06004f

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 67
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v5, "status_bar_clock"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    .line 68
    const-string v5, "status_bar_am_pm"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 69
    const-string v5, "status_bar_battery_style"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 70
    const-string v5, "status_bar_show_battery_percent"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    .line 73
    const-string v5, "status_bar_clock"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, "clockStyle":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 81
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    const v6, 0x7f09011a

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 90
    :goto_0
    const-string v5, "status_bar_battery_style"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "batteryStyle":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string v5, "status_bar_show_battery_percent"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, "batteryShowPercent":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    .line 101
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    return-void

    .line 83
    .end local v0    # "batteryShowPercent":I
    .end local v1    # "batteryStyle":I
    :cond_0
    const-string v5, "status_bar_am_pm"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 85
    .local v4, "statusBarAmPm":I
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 119
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v6, p2

    .line 120
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, "clockStyle":I
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 122
    .local v3, "index":I
    const-string v6, "status_bar_clock"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v6, v7

    .line 150
    .end local v2    # "clockStyle":I
    .end local v3    # "index":I
    :goto_0
    return v6

    .line 126
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    move-object v6, p2

    .line 127
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 128
    .local v5, "statusBarAmPm":I
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 129
    .restart local v3    # "index":I
    const-string v6, "status_bar_am_pm"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v6, v7

    .line 132
    goto :goto_0

    .line 133
    .end local v3    # "index":I
    .end local v5    # "statusBarAmPm":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    move-object v6, p2

    .line 134
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 135
    .local v1, "batteryStyle":I
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 136
    .restart local v3    # "index":I
    const-string v6, "status_bar_battery_style"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    move v6, v7

    .line 140
    goto :goto_0

    .line 141
    .end local v1    # "batteryStyle":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    .line 142
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    .local v0, "batteryShowPercent":I
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 144
    .restart local v3    # "index":I
    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v6, v7

    .line 148
    goto/16 :goto_0

    .line 150
    .end local v0    # "batteryShowPercent":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void
.end method
