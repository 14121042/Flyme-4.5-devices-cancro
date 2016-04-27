.class Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;

.field final synthetic val$device:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$dialogLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;Landroid/view/View;Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;->this$1:Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;->val$device:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;->val$dialogLayout:Landroid/view/View;

    const v2, 0x7f10002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 527
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/BluetoothSettings$3$1;->val$device:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 528
    return-void
.end method
