.class public Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;
.super Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;
.source "SetupManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SetupManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupManageFingerprintsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints$FingerprintListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollmentIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.fingerprint_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 99
    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0400ee

    return v0
.end method
