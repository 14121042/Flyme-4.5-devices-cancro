.class Lcom/android/cyanogenmod/settings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/RadioInfo;->updatePingState()V
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
    .line 795
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2600(Lcom/android/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2500(Lcom/android/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2800(Lcom/android/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2700(Lcom/android/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$3000(Lcom/android/cyanogenmod/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$3;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2900(Lcom/android/cyanogenmod/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    return-void
.end method
