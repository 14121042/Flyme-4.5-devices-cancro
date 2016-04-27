.class Lcom/android/cyanogenmod/settings/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1186
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    # getter for: Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$900(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1190
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1193
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    .line 1197
    :goto_1
    return-void

    .line 1189
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1195
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$1000(Lcom/android/cyanogenmod/settings/DataUsageSummary;J)V

    goto :goto_1
.end method
