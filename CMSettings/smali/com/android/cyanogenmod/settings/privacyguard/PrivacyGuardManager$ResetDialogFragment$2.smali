.class Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$0:Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$0:Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager;

    # invokes: Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager;->doReset()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager;->access$000(Lcom/android/cyanogenmod/settings/privacyguard/PrivacyGuardManager;)V

    .line 344
    return-void
.end method
