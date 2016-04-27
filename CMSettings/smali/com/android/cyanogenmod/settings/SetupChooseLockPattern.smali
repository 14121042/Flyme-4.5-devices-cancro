.class public Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;
.super Lcom/android/cyanogenmod/settings/ChooseLockPattern;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFallback"    # Z
    .param p2, "isFingerprintFallback"    # Z
    .param p3, "requirePassword"    # Z
    .param p4, "confirmCredentials"    # Z

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
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
    .line 69
    const-class v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

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
    .line 74
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 76
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern;->onAttachFragment(Landroid/app/Fragment;)V

    .line 99
    instance-of v0, p1, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    .line 102
    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->onBackPressed()V

    .line 87
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mFragment:Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleRightButton()V

    .line 94
    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 81
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 82
    return-void
.end method
