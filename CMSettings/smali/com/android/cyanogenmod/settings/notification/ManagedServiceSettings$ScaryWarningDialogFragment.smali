.class public Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 4
    .param p0, "caller"    # Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v1, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 94
    .local v1, "fragment":Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "l"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "s"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 100
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "l"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "title":Ljava/lang/String;
    const-string v3, "s"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "summary":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
