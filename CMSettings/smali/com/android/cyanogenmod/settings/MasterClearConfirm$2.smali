.class Lcom/android/cyanogenmod/settings/MasterClearConfirm$2;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/MasterClearConfirm;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/MasterClearConfirm$2;->this$0:Lcom/android/cyanogenmod/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 213
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 214
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClearConfirm$2;->this$0:Lcom/android/cyanogenmod/settings/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/MasterClearConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 216
    return-void
.end method
