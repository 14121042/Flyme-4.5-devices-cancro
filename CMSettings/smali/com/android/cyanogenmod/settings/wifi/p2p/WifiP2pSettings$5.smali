.class Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;->getNetworkId()I

    move-result v2

    new-instance v3, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;
    invoke-static {v0, v4}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$1202(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;
    invoke-static {v0, v4}, Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;->access$1202(Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pSettings;Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/cyanogenmod/settings/wifi/p2p/WifiP2pPersistentGroup;

    goto :goto_0
.end method
