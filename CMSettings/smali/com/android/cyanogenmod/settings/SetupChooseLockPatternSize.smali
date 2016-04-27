.class public Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize;
.super Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;
.source "SetupChooseLockPatternSize.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize$SetupChooseLockPatternSizeFragment;

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
    .line 59
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockPatternSize;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 61
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPatternSize;->onBackPressed()V

    .line 72
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    return-void
.end method
