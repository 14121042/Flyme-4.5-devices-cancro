.class public Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09088b

    new-instance v2, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;-><init>(Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d8

    new-instance v2, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;-><init>(Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
