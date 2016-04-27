.class final Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/bluetooth/PanProfile$1;,
        Lcom/android/cyanogenmod/settings/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private mLastConnectTime:J

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mLastConnectTime:J

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 75
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;Lcom/android/cyanogenmod/settings/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mLastConnectTime:J

    .line 89
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 96
    :goto_0
    return v3

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 93
    .local v1, "sink":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sink":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 180
    sget-boolean v1, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "PanProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    .line 183
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 163
    const v0, 0x7f020056

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const v0, 0x7f0905b0

    .line 135
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0905ad

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 141
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 158
    :pswitch_0
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 143
    :pswitch_1
    iget-wide v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mLastConnectTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mLastConnectTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 145
    const v1, 0x7f09036f

    goto :goto_0

    .line 147
    :cond_0
    const v1, 0x7f0905c9

    goto :goto_0

    .line 150
    :pswitch_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mLastConnectTime:J

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const v1, 0x7f0905c4

    goto :goto_0

    .line 154
    :cond_1
    const v1, 0x7f0905c3

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v0, v2

    .line 175
    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "role"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "PAN"

    return-object v0
.end method
