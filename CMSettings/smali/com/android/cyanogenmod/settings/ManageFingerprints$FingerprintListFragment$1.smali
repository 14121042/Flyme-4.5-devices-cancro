.class Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;
.super Ljava/lang/Object;
.source "ManageFingerprints.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 211
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->addFinger()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$100(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;)Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 218
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;->access$200(Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0
.end method
