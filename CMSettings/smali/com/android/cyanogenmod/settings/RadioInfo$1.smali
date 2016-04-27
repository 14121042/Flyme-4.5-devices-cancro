.class Lcom/android/cyanogenmod/settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # setter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$802(Lcom/android/cyanogenmod/settings/RadioInfo;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$900(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 173
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$1000(Lcom/android/cyanogenmod/settings/RadioInfo;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$1100(Lcom/android/cyanogenmod/settings/RadioInfo;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$500(Lcom/android/cyanogenmod/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 161
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$400(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 156
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$1000(Lcom/android/cyanogenmod/settings/RadioInfo;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$1200(Lcom/android/cyanogenmod/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 185
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$000(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 148
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$100(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$200(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$300(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 151
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # setter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$602(Lcom/android/cyanogenmod/settings/RadioInfo;Z)Z

    .line 166
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$1;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$700(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 167
    return-void
.end method
