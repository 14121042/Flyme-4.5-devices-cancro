.class public Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;
.super Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;
.source "WifiEnabler.java"


# static fields
.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->init()V

    .line 96
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setupSwitches()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->init()V

    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setupSwitches()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 190
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->showSpinner(Z)V

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 162
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 164
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->showSpinner(Z)V

    .line 142
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 143
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->showSpinner(Z)V

    .line 153
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 154
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private setupSwitches()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 110
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 111
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->show()V

    .line 113
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setSpinnerEntries([Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 170
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 171
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 223
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0905fe

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setChecked(Z)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 207
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0905fd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->pause()V

    .line 129
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method
