.class public Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;
.super Landroid/app/DialogFragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrpDialog"
.end annotation


# instance fields
.field private mOriginalOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createInstance(ZZ)Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;
    .locals 3
    .param p0, "wipeInternal"    # Z
    .param p1, "wipeExternal"    # Z

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wipe_media"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string v2, "wipe_sdcard"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    new-instance v1, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;

    invoke-direct {v1}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;-><init>()V

    .line 68
    .local v1, "fragment":Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->setShowsDialog(Z)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->setCancelable(Z)V

    .line 88
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0907bd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0907be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 109
    new-instance v0, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;-><init>(Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->mOriginalOrientation:I

    .line 97
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 98
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 103
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/cyanogenmod/settings/MasterClearConfirm$FrpDialog;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 104
    return-void
.end method
