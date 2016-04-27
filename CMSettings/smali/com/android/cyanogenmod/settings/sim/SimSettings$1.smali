.class Lcom/android/cyanogenmod/settings/sim/SimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v6, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # invokes: Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$000(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V

    .line 165
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 166
    .local v3, "preferredDataSubscription":I
    int-to-long v6, v3

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v8}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$200(Lcom/android/cyanogenmod/settings/sim/SimSettings;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 167
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    int-to-long v8, v3

    # setter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v6, v8, v9}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$202(Lcom/android/cyanogenmod/settings/sim/SimSettings;J)J

    .line 168
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090d64

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v9}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 188
    .end local v3    # "preferredDataSubscription":I
    .end local v5    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    const-string v7, "sim_data"

    invoke-virtual {v6, v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 189
    .local v1, "dataToggle":Landroid/preference/SwitchPreference;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$900(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 190
    return-void

    .line 172
    .end local v1    # "dataToggle":Landroid/preference/SwitchPreference;
    :cond_1
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$300(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 175
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # setter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v6, v10}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$402(Lcom/android/cyanogenmod/settings/sim/SimSettings;I)I

    .line 176
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$502(Lcom/android/cyanogenmod/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSlots:I
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$600(Lcom/android/cyanogenmod/settings/sim/SimSettings;)I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 178
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # invokes: Lcom/android/cyanogenmod/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    invoke-static {v6, v2}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$700(Lcom/android/cyanogenmod/settings/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 180
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_3

    iget v6, v4, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$100(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    if-ne v6, v11, :cond_3

    .line 181
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # operator++ for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mNumSims:I
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$408(Lcom/android/cyanogenmod/settings/sim/SimSettings;)I

    .line 182
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$300(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$1;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # invokes: Lcom/android/cyanogenmod/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$800(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V

    goto :goto_0
.end method
