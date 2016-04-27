.class Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment$1;
.super Ljava/lang/Object;
.source "EnrollFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment$1;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment$1;->this$0:Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;->dismiss()V

    .line 607
    return-void
.end method
