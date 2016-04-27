.class public Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;
.super Landroid/app/DialogFragment;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrongSensorDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;
    .locals 1

    .prologue
    .line 597
    new-instance v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 602
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901d4

    new-instance v3, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment$1;-><init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0903ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 611
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
