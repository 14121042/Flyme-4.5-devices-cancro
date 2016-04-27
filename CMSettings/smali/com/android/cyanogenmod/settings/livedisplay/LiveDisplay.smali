.class public Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorEnhancement:Landroid/preference/SwitchPreference;

.field private mColorProfile:Landroid/preference/ListPreference;

.field private mColorProfileSummaries:[Ljava/lang/String;

.field private mDefaultDayTemperature:I

.field private mDefaultNightTemperature:I

.field private mDisplayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHasDisplayModes:Z

.field private mLiveDisplay:Landroid/preference/ListPreference;

.field private mLowPower:Landroid/preference/SwitchPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private final mObserver:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mScreenColorSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateModeSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "string"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "resId":I
    if-gtz v1, :cond_0

    .line 237
    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No resource found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static isPostProcessingSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const-string v0, "com.qualcomm.display"

    invoke-static {p0, v0}, Lcom/android/cyanogenmod/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateColorProfileSummary(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v2, :cond_0

    .line 303
    :goto_0
    return-void

    .line 287
    :cond_0
    if-nez p1, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 289
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v0, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ltz v2, :cond_1

    .line 290
    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 294
    .end local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, "idx":I
    if-gez v1, :cond_2

    .line 296
    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No summary resource found for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplayModes()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 245
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v4

    .line 246
    .local v4, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-eqz v4, :cond_0

    array-length v12, v4

    if-nez v12, :cond_2

    :cond_0
    move v10, v11

    .line 279
    :cond_1
    :goto_0
    return v10

    .line 250
    :cond_2
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v12}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 251
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    const/4 v1, -0x1

    .line 252
    .local v1, "curId":I
    array-length v12, v4

    new-array v2, v12, [Ljava/lang/String;

    .line 253
    .local v2, "entries":[Ljava/lang/String;
    array-length v12, v4

    new-array v9, v12, [Ljava/lang/String;

    .line 254
    .local v9, "values":[Ljava/lang/String;
    array-length v12, v4

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    .line 255
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v4

    if-ge v3, v12, :cond_5

    .line 256
    aget-object v12, v4, v3

    iget v12, v12, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3

    .line 257
    aget-object v12, v4, v3

    iget-object v12, v12, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, "_"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "name":Ljava/lang/String;
    const-string v12, "live_display_color_profile_%s_title"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v5, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "nameRes":Ljava/lang/String;
    aget-object v12, v4, v3

    iget-object v12, v12, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v12}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v3

    .line 262
    const-string v12, "live_display_color_profile_%s_summary"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v5, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, "summaryRes":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-direct {p0, v8, v12}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "summary":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 265
    const-string v12, "%s - %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aget-object v14, v2, v3

    aput-object v14, v13, v11

    aput-object v7, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 267
    :cond_3
    iget-object v12, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aput-object v7, v12, v3

    .line 269
    if-eqz v0, :cond_4

    aget-object v12, v4, v3

    iget v12, v12, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget v13, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v12, v13, :cond_4

    .line 270
    const/4 v1, -0x1

    .line 255
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameRes":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v8    # "summaryRes":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 274
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 275
    if-ltz v1, :cond_1

    .line 276
    iget-object v11, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateModeSummary()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_temperature_mode"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 310
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_1

    .line 318
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->setEnabled(Z)V

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 323
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 318
    goto :goto_0

    :cond_4
    move v3, v4

    .line 321
    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 8

    .prologue
    const/4 v5, -0x2

    .line 326
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_day"

    iget v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 330
    .local v0, "day":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_night"

    iget v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 335
    .local v1, "night":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09033f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super/range {p0 .. p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 114
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 115
    .local v11, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 117
    .local v10, "res":Landroid/content/res/Resources;
    const v14, 0x10e008d

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    .line 119
    const v14, 0x10e008e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    .line 122
    invoke-static {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 124
    const v14, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    .line 126
    const-string v14, "live_display_options"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 128
    .local v9, "liveDisplayPrefs":Landroid/preference/PreferenceCategory;
    const-string v14, "advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 131
    .local v3, "advancedPrefs":Landroid/preference/PreferenceCategory;
    const-string v14, "display_temperature_mode"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 134
    .local v2, "adaptiveMode":I
    const-string v14, "live_display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    const v14, 0x1070011

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 139
    const v14, 0x1070013

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 141
    const v14, 0x1070012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 147
    .local v7, "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v4, v14, [Ljava/lang/String;

    .line 148
    .local v4, "entriesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 149
    .local v13, "valuesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v12, v14, [Ljava/lang/String;

    .line 150
    .local v12, "summariesTemp":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 151
    .local v8, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v14, v14

    if-ge v6, v14, :cond_1

    .line 152
    if-ne v6, v7, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v4, v8

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v13, v8

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v14, v14, v6

    aput-object v14, v12, v8

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 165
    .end local v4    # "entriesTemp":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v8    # "j":I
    .end local v12    # "summariesTemp":[Ljava/lang/String;
    .end local v13    # "valuesTemp":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v14, "live_display_color_temperature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .line 171
    const-string v14, "live_display_color_profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    .line 172
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x2000

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateDisplayModes()Z

    move-result v14

    if-nez v14, :cond_a

    .line 174
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :goto_2
    const-string v14, "display_auto_outdoor_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 181
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 187
    :cond_4
    const-string v14, "display_low_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 188
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 194
    :cond_5
    const-string v14, "display_color_enhance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 195
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 201
    :cond_6
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 203
    const-string v14, "gamma_tuning"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 204
    .local v5, "gammaPref":Landroid/preference/Preference;
    if-eqz v5, :cond_7

    .line 205
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v5    # "gammaPref":Landroid/preference/Preference;
    :cond_7
    const-string v14, "screencolor_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    .line 210
    if-eqz v3, :cond_9

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_9
    return-void

    .line 176
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 231
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 341
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_temperature_mode"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 356
    :cond_0
    :goto_0
    return v9

    .line 345
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    move-object v5, p2

    .line 346
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 347
    .local v2, "id":I
    const-string v5, "LiveDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v5}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .local v0, "arr$":[Lcyanogenmod/hardware/DisplayMode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 349
    .local v4, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget v5, v4, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v5, v2, :cond_2

    .line 350
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v5, v4, v9}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    .line 351
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateModeSummary()V

    .line 222
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 225
    return-void
.end method
