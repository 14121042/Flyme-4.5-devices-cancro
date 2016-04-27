.class public Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;
.super Landroid/app/DialogFragment;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameAndDeleteFragment"
.end annotation


# instance fields
.field private mFingerNameEditText:Landroid/widget/EditText;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static newInstance(Landroid/hardware/fingerprint/Fingerprint;)Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;
    .locals 3
    .param p0, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 413
    new-instance v1, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-direct {v1}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;-><init>()V

    .line 414
    .local v1, "fragment":Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 417
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 424
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 425
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040066

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    .line 427
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09039a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901d4

    new-instance v4, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$2;

    invoke-direct {v4, p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$2;-><init>(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09012c

    new-instance v4, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;

    invoke-direct {v4, p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment$1;-><init>(Lcom/android/cyanogenmod/settings/ManageFingerprints$RenameAndDeleteFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
