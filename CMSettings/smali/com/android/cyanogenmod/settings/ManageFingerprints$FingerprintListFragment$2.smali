.class Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;
.super Landroid/service/fingerprint/FingerprintManagerReceiver;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManagerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollResult(II)V
    .locals 1
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    .line 266
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 268
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$300(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onRemoved(I)V
    .locals 1
    .param p1, "fingerprintId"    # I

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onRemoved(I)V

    .line 257
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 259
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$300(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)V

    .line 261
    :cond_0
    return-void
.end method
