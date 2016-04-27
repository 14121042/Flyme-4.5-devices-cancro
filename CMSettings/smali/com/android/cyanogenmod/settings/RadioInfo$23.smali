.class Lcom/android/cyanogenmod/settings/RadioInfo$23;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1139
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$23;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$23;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$4600(Lcom/android/cyanogenmod/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1142
    .local v0, "msg":Landroid/os/Message;
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$23;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$1800(Lcom/android/cyanogenmod/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$23;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2000(Lcom/android/cyanogenmod/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1145
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 1148
    return-void
.end method
