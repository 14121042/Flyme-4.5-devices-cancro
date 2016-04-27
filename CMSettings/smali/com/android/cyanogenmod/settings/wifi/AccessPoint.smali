.class Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/wifi/AccessPoint$1;,
        Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static wifi_no_signal_attributes:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field isIBSS:Z

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoSignalLoaded:Z

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private mShowNoSignalIcon:Z

.field private mSortPreference:Z

.field private mSummaryView:Landroid/widget/TextView;

.field networkId:I

.field pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

.field security:I

.field showSummary:Z

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [I

    const v1, 0x7f01000e

    aput v1, v0, v2

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 85
    new-array v0, v3, [I

    const v1, 0x7f010038

    aput v1, v0, v2

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    .line 86
    new-array v0, v3, [I

    const v1, 0x7f010039

    aput v1, v0, v2

    sput-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wifi_no_signal_attributes:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSortPreference:Z

    .line 218
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 219
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->refresh()V

    .line 220
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "showNoSignal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSortPreference:Z

    .line 210
    iput-boolean p3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mShowNoSignalIcon:Z

    .line 212
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 213
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->refresh()V

    .line 214
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSortPreference:Z

    .line 225
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 226
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 229
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 233
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 234
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 238
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 190
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 191
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 192
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 193
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 200
    :goto_0
    return-object v2

    .line 194
    :cond_0
    if-eqz v1, :cond_1

    .line 195
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 196
    :cond_1
    if-eqz v0, :cond_2

    .line 197
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x2

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 24

    .prologue
    .line 498
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 500
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 501
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 503
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 505
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_0

    .line 508
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_0
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    const-string v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 520
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 521
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 522
    .local v13, "rssi24":I
    const/4 v10, 0x0

    .line 523
    .local v10, "num5":I
    const/4 v7, 0x0

    .line 524
    .local v7, "num24":I
    const/4 v11, 0x0

    .line 525
    .local v11, "numBlackListed":I
    const/4 v5, 0x0

    .line 526
    .local v5, "n24":I
    const/4 v6, 0x0

    .line 527
    .local v6, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 529
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 530
    .local v12, "result":Landroid/net/wifi/ScanResult;
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 533
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 535
    :cond_3
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 539
    add-int/lit8 v10, v10, 0x1

    .line 548
    :cond_4
    :goto_1
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    const-wide/16 v20, 0x4e20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 550
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 552
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_5

    .line 553
    iget v14, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 555
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 556
    if-nez v16, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .restart local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    :cond_6
    const-string v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    if-eqz v2, :cond_7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_7
    const-string v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 562
    const-string v18, ",st="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    :cond_8
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 565
    const-string v18, ",ipf="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    :cond_9
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 540
    :cond_a
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 544
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 570
    :cond_b
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 572
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_c

    .line 573
    iget v13, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 575
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 576
    if-nez v15, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .restart local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    :cond_d
    const-string v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    if-eqz v2, :cond_e

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_e
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 582
    const-string v18, ",st="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    :cond_f
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 585
    const-string v18, ",ipf="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    :cond_10
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 592
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    if-lez v7, :cond_12

    .line 594
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_16

    .line 596
    if-eqz v15, :cond_12

    .line 597
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_12
    :goto_2
    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    if-lez v10, :cond_13

    .line 608
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v6, v0, :cond_17

    .line 610
    if-eqz v16, :cond_13

    .line 611
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_13
    :goto_3
    if-lez v11, :cond_14

    .line 621
    const-string v18, "!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    :cond_14
    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_15
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 600
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .restart local v5    # "n24":I
    .restart local v6    # "n5":I
    .restart local v7    # "num24":I
    .restart local v10    # "num5":I
    .restart local v11    # "numBlackListed":I
    .restart local v13    # "rssi24":I
    .restart local v14    # "rssi5":I
    :cond_16
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    if-eqz v15, :cond_12

    .line 602
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 614
    :cond_17
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    if-eqz v16, :cond_13

    .line 616
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 624
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 625
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 628
    const-string v18, ", f="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 412
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 413
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 250
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    .line 253
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    .line 254
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    .line 255
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->frequency:I

    .line 256
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 257
    return-void

    .line 250
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 260
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    .line 263
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 264
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    .line 265
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->frequency:I

    .line 266
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 267
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 268
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 269
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 270
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 271
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    .line 273
    :cond_1
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 18

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 655
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 658
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v3, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    const/4 v14, 0x1

    :goto_0
    invoke-static {v2, v15, v14}, Lcom/android/cyanogenmod/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    if-eqz v14, :cond_1

    .line 706
    const v14, 0x7f0902ea

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_1
    sget v14, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v14, :cond_9

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v14, :cond_2

    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " f="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v14, :cond_5

    .line 717
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 720
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 721
    .local v4, "diff":J
    const-wide/16 v14, 0x3c

    rem-long v12, v4, v14

    .line 722
    .local v12, "sec":J
    const-wide/16 v14, 0x3c

    div-long v14, v4, v14

    const-wide/16 v16, 0x3c

    rem-long v8, v14, v16

    .line 723
    .local v8, "min":J
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v6, v14, v16

    .line 724
    .local v6, "hour":J
    const-string v14, ", "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .end local v4    # "diff":J
    .end local v6    # "hour":J
    .end local v8    # "min":J
    .end local v10    # "now":J
    .end local v12    # "sec":J
    :cond_4
    const-string v14, ")"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v14, :cond_6

    .line 732
    const-string v14, " ipf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v14, :cond_7

    .line 735
    const-string v14, " cf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v14, :cond_8

    .line 738
    const-string v14, " authf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v14, :cond_9

    .line 741
    const-string v14, " noInt="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_14

    .line 746
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 747
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setShowSummary(Z)V

    .line 751
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 752
    return-void

    .line 664
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 666
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 668
    const v14, 0x7f090651

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 669
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v14, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_12

    .line 673
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_11

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 676
    const v14, 0x7f09064d

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 677
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_10

    .line 678
    const v14, 0x7f09064f

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 680
    :cond_10
    const v14, 0x7f09064e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 683
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 693
    :pswitch_0
    const v14, 0x7f09064c

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 685
    :pswitch_1
    const v14, 0x7f09064f

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 689
    :pswitch_2
    const v14, 0x7f09064d

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 697
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_13

    .line 698
    const v14, 0x7f090650

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 700
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_0

    .line 701
    const v14, 0x7f09064b

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 749
    :cond_14
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setShowSummary(Z)V

    goto/16 :goto_2

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 466
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 468
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 470
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 330
    instance-of v3, p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSortPreference:Z

    if-nez v3, :cond_2

    .line 334
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 336
    check-cast v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 338
    .local v1, "other":Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    :cond_4
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_5

    iget v3, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 343
    :cond_5
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_0

    .line 346
    :cond_6
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_7

    iget v3, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_7

    move v0, v2

    .line 347
    goto :goto_0

    .line 348
    :cond_7
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_8

    iget v3, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 352
    :cond_8
    iget v2, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 353
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 362
    instance-of v1, p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 363
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 760
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 767
    :goto_0
    return-void

    .line 764
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 765
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 443
    const/4 v0, -0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "concise"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 185
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 162
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f09065a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f090661

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object v1, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 177
    if-eqz p1, :cond_4

    const v1, 0x7f090659

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 167
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f090656

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f09065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f090657

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f09065e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 173
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f090658

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f09065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_4
    const v1, 0x7f090660

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f090655

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f09065c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_6
    const v1, 0x7f09065b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 370
    :cond_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 371
    iget v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 372
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 373
    return v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 280
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    .line 281
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->showSummary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->notifyChanged()V

    .line 284
    return-void

    .line 281
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 2
    .param p1, "showSummary"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->showSummary:Z

    .line 484
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :cond_0
    return-void

    .line 485
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSortPreference(Z)V
    .locals 0
    .param p1, "sort"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSortPreference:Z

    .line 408
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "reorder":Z
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 426
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 427
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 428
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 429
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->refresh()V

    .line 436
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 439
    :cond_1
    return-void

    .line 425
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 432
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 433
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 434
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 377
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 378
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mSeen:J

    .line 380
    :cond_0
    sget v1, Lcom/android/cyanogenmod/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 388
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 390
    .local v0, "oldLevel":I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mRssi:I

    .line 391
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->notifyChanged()V

    .line 396
    .end local v0    # "oldLevel":I
    :cond_3
    iget v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 397
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->pskType:Lcom/android/cyanogenmod/settings/wifi/AccessPoint$PskType;

    .line 399
    :cond_4
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 400
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->refresh()V

    .line 401
    const/4 v1, 0x1

    .line 403
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 287
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 288
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mShowNoSignalIcon:Z

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-nez v2, :cond_1

    .line 292
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wifi_no_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 294
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_1

    .line 295
    iget v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 296
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNoSignalLoaded:Z

    .line 301
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-nez v2, :cond_2

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    :goto_1
    return-void

    .line 295
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_0

    .line 305
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-eqz v2, :cond_6

    .line 310
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 314
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_6

    .line 315
    iget v2, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 316
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->mNoSignalLoaded:Z

    .line 322
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 315
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_7
    sget-object v2, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method
