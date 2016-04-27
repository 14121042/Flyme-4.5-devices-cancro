.class Lcom/android/cyanogenmod/settings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    # getter for: Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$1500(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$1000(Lcom/android/cyanogenmod/settings/DataUsageSummary;J)V

    .line 1409
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    # getter for: Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$1500(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$2600(Lcom/android/cyanogenmod/settings/DataUsageSummary;J)V

    .line 1404
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    .line 1419
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    .line 1414
    return-void
.end method
