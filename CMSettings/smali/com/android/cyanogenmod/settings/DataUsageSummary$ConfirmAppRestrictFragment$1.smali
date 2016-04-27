.class Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2237
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .line 2238
    .local v0, "target":Lcom/android/cyanogenmod/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2239
    const/4 v1, 0x1

    # invokes: Lcom/android/cyanogenmod/settings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$1200(Lcom/android/cyanogenmod/settings/DataUsageSummary;Z)V

    .line 2241
    :cond_0
    return-void
.end method
