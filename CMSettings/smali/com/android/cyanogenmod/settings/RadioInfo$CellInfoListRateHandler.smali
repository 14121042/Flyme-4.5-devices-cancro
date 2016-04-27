.class Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfoListRateHandler"
.end annotation


# instance fields
.field index:I

.field rates:[I

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/RadioInfo;)V
    .locals 1

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    return-void

    .line 960
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public getRate()I
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 969
    iget v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 970
    iget v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # getter for: Lcom/android/cyanogenmod/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$2000(Lcom/android/cyanogenmod/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v2, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 974
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/cyanogenmod/settings/RadioInfo;

    # invokes: Lcom/android/cyanogenmod/settings/RadioInfo;->updateCellInfoListRate()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/RadioInfo;->access$3600(Lcom/android/cyanogenmod/settings/RadioInfo;)V

    .line 975
    return-void
.end method
