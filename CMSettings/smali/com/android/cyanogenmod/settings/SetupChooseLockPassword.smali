.class public Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;
.super Lcom/android/cyanogenmod/settings/ChooseLockPassword;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPassword;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "isFallback"    # Z
    .param p3, "isFingerprintFallback"    # Z
    .param p4, "minLength"    # I
    .param p5, "maxLength"    # I
    .param p6, "requirePasswordToDecrypt"    # Z
    .param p7, "confirmCredentials"    # Z

    .prologue
    .line 45
    invoke-static/range {p0 .. p7}, Lcom/android/cyanogenmod/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
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
    .line 63
    const-class v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockPassword;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 70
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/ChooseLockPassword;->onAttachFragment(Landroid/app/Fragment;)V

    .line 93
    instance-of v0, p1, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    .line 96
    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->onBackPressed()V

    .line 81
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 88
    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 75
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 76
    return-void
.end method
