.class public Lcom/android/cyanogenmod/settings/SetupManageFingerprints;
.super Lcom/android/cyanogenmod/settings/ManageFingerprints;
.source "SetupManageFingerprints.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ManageFingerprints;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method protected createFallbackIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/SetupEnrollFingerprint;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 85
    return-object v0
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;

    return-object v0
.end method

.method protected hasBackToFinish()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/android/cyanogenmod/settings/SetupManageFingerprints$SetupManageFingerprintsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 58
    const p2, 0x7f0a000b

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints;->onBackPressed()V

    .line 70
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupManageFingerprints;->finish()V

    .line 76
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 65
    return-void
.end method
