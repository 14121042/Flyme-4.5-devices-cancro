.class public Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2150
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 2152
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2157
    :goto_0
    return-void

    .line 2154
    :cond_0
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    .line 2155
    .local v0, "dialog":Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2156
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2163
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2164
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090bc6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2165
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2166
    const v2, 0x7f090bc8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2171
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2180
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2168
    :cond_0
    const v2, 0x7f090bc7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
