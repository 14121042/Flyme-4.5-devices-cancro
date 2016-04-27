.class public Lcom/android/cyanogenmod/settings/EnrollFingerprint;
.super Lcom/android/cyanogenmod/settings/SettingsActivity;
.source "EnrollFingerprint.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$1;,
        Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;
    }
.end annotation


# instance fields
.field private mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

.field private mSetupBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsActivity;-><init>()V

    .line 117
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/cyanogenmod/settings/EnrollFingerprint;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
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
    .line 68
    const-class v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 57
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method public getSetupBar()Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mSetupBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/android/cyanogenmod/settings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 75
    return-void
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigateBack()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->onBackPressed()V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigateNext()V

    .line 107
    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mSetupBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->setUseImmersiveMode(Z)V

    .line 87
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v0, p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setFragmentBarListener(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/EnrollFingerprint;->mFragmentListener:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    .line 115
    return-void
.end method
