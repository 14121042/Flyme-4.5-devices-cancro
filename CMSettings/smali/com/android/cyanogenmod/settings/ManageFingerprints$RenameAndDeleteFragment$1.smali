.class Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;
.super Ljava/lang/Object;
.source "ManageFingerprints.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->access$400(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->doDelete(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 446
    return-void
.end method
