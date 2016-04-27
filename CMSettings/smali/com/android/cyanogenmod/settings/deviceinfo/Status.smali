.class public Lcom/android/cyanogenmod/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "network_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 140
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 213
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$1;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$2;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 233
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$3;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$4;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 712
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 713
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 714
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 716
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getIcCodes(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 741
    const v2, 0x7f0902f2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "model":Ljava/lang/String;
    const v2, 0x7f0902f3

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f0903db

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "icCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSarValues(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 733
    const v2, 0x7f0902f0

    const v3, 0x7f0903d9

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "headLevel":Ljava/lang/String;
    const v2, 0x7f0902f1

    const v3, 0x7f0903da

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "bodyLevel":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 725
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 728
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 550
    packed-switch p1, :pswitch_data_0

    .line 559
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :pswitch_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 720
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 704
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 705
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 520
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 673
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 674
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 678
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 658
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 659
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 660
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    return-void

    .line 659
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 652
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 655
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 615
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 574
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09040d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 591
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 578
    :pswitch_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09040b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09040c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    goto :goto_0

    .line 584
    :pswitch_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09040a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    goto :goto_0

    .line 587
    :pswitch_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090409

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "networktype":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 596
    .local v1, "voiceState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 598
    .local v0, "dataState":I
    if-ne v1, v0, :cond_0

    .line 599
    const-string v2, "service_state"

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void

    .line 601
    :cond_0
    const-string v2, "service_state"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900d9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    .line 275
    .local v10, "mActionBar":Landroid/app/ActionBar;
    if-eqz v10, :cond_0

    .line 276
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 279
    :cond_0
    new-instance v19, Lcom/android/cyanogenmod/settings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 281
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 282
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 283
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 285
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 286
    const v19, 0x7f060019

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 291
    :goto_0
    const-string v19, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 292
    const-string v19, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 293
    const-string v19, "bt_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 294
    const-string v19, "wifi_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 295
    const-string v19, "wimax_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 296
    const-string v19, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0903e9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f090755

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 302
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v19

    if-nez v19, :cond_1

    .line 304
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 307
    :cond_1
    const-string v19, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 308
    const-string v19, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 311
    :cond_2
    sget-object v3, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_9

    aget-object v8, v3, v6

    .line 312
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 288
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len$":I
    :cond_3
    const v19, 0x7f06001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 315
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount()I

    move-result v19

    if-nez v19, :cond_5

    .line 316
    sget-object v3, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v9, v3

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v8, v3, v6

    .line 317
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 322
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "CDMA"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 323
    const-string v19, "meid_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v19, "min_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 326
    const-string v19, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const v20, 0x7f090747

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 328
    :cond_6
    const-string v19, "prl_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v19, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 333
    const-string v19, "icc_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v19, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v14

    .line 362
    .local v14, "rawNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 363
    .local v4, "formattedNumber":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 364
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    :cond_8
    const-string v19, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v19, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v19, v0

    const/16 v20, 0xc8

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v19, v0

    const/16 v20, 0x12c

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 374
    const-string v19, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 378
    .end local v4    # "formattedNumber":Ljava/lang/String;
    .end local v14    # "rawNumber":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->hasBluetooth()Z

    move-result v19

    if-nez v19, :cond_a

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 383
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->hasWimax()Z

    move-result v19

    if-nez v19, :cond_b

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 388
    :cond_b
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 389
    sget-object v3, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v9, v3

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v9, :cond_e

    aget-object v7, v3, v6

    .line 390
    .local v7, "intent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 338
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "intent":Ljava/lang/String;
    .end local v9    # "len$":I
    :cond_c
    const-string v19, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 339
    const-string v19, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 342
    :cond_d
    const-string v19, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v20, "imei_sv"

    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v19, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 351
    const-string v19, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 352
    const-string v19, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 353
    const-string v19, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 356
    const-string v19, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 357
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    goto/16 :goto_3

    .line 393
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateConnectivity()V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSerialNumber()Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, "serial":Ljava/lang/String;
    if-eqz v15, :cond_10

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 397
    const-string v19, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-eqz v19, :cond_f

    .line 404
    const-string v19, "sim_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 405
    const-string v19, "imei_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 410
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v19

    new-instance v20, Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 433
    const-string v19, "button_aboutphone_msim_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 434
    .local v17, "subs":Landroid/preference/Preference;
    if-eqz v17, :cond_13

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 436
    .local v13, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 437
    .local v11, "numPhones":I
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v18

    .line 439
    .local v18, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v11, :cond_12

    .line 440
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v16

    .line 442
    .local v16, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v12, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 444
    .local v12, "pref":Landroid/preference/Preference;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getOrder()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 445
    const v19, 0x7f090370

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v5, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    if-eqz v16, :cond_11

    .line 447
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    :goto_7
    new-instance v7, Landroid/content/Intent;

    const-class v19, Lcom/android/cyanogenmod/settings/deviceinfo/SimStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .local v7, "intent":Landroid/content/Intent;
    const-string v19, "slot_id"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    invoke-virtual {v12, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 456
    invoke-virtual {v13, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 399
    .end local v5    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "numPhones":I
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v13    # "prefSet":Landroid/preference/PreferenceScreen;
    .end local v16    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v17    # "subs":Landroid/preference/Preference;
    .end local v18    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_10
    const-string v19, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 449
    .restart local v5    # "i":I
    .restart local v11    # "numPhones":I
    .restart local v12    # "pref":Landroid/preference/Preference;
    .restart local v13    # "prefSet":Landroid/preference/PreferenceScreen;
    .restart local v16    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v17    # "subs":Landroid/preference/Preference;
    .restart local v18    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_11
    const v19, 0x7f090372

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_7

    .line 458
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v16    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_12
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    .end local v5    # "i":I
    .end local v11    # "numPhones":I
    .end local v13    # "prefSet":Landroid/preference/PreferenceScreen;
    .end local v18    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->finish()V

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 502
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 504
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 506
    :cond_0
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 475
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 478
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 479
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 480
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->updateDataState()V

    .line 481
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 483
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 492
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 687
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setWifiStatus()V

    .line 688
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setBtStatus()V

    .line 689
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 690
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 624
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 625
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 627
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 629
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 631
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v3    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 635
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local v3    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 637
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_3

    const/4 v2, 0x0

    .line 639
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 641
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_4

    const/4 v1, 0x0

    .line 643
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090410

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090411

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 694
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 696
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 697
    const-wide/16 v2, 0x1

    .line 700
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 701
    return-void
.end method
