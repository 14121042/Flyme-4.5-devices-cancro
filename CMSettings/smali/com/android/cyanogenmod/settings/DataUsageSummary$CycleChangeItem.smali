.class public Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleChangeItem;
.super Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleChangeItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1480
    const v0, 0x7f090b9d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;-><init>(Ljava/lang/CharSequence;)V

    .line 1481
    return-void
.end method
