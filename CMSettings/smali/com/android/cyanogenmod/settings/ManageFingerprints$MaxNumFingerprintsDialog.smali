.class public Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;
.super Landroid/app/DialogFragment;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxNumFingerprintsDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 459
    const v1, 0x7f09039d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09039c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901d4

    new-instance v3, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog$1;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog$1;-><init>(Lcom/android/cyanogenmod/settings/ManageFingerprints$MaxNumFingerprintsDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
