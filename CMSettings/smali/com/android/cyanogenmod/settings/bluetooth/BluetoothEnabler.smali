.class public final Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;
.super Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;
.source "BluetoothEnabler.java"


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 49
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V

    .line 49
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 86
    .local v0, "manager":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 93
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 151
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 136
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 144
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 184
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 168
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0905fe

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 178
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->pause()V

    .line 121
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 115
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->show()V

    .line 98
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->hide()V

    .line 102
    return-void
.end method
