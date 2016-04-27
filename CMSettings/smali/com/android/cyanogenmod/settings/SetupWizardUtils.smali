.class public Lcom/android/cyanogenmod/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .prologue
    .line 115
    const-string v0, "theme"

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v0, "title"

    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v0, "details"

    const-string v1, "details"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public static getHeader(Landroid/app/Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static getTheme(Landroid/content/Intent;I)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultResId"    # I

    .prologue
    .line 75
    const-string v2, "theme"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "themeName":Ljava/lang/String;
    move v0, p1

    .line 77
    .local v0, "resid":I
    const-string v2, "holo_light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "material_light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_0
    const v0, 0x7f0a004a

    .line 84
    :cond_1
    :goto_0
    return v0

    .line 80
    :cond_2
    const-string v2, "holo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "material"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_3
    const v0, 0x7f0a0049

    goto :goto_0
.end method

.method public static isUsingWizardManager(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendResultsToSetupWizard(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.wizard.NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "nextIntent":Landroid/content/Intent;
    const-string v2, "scriptUri"

    const-string v3, "scriptUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "actionId"

    const-string v3, "actionId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "theme"

    const-string v3, "theme"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "com.android.setupwizard.ResultCode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method

.method public static setHeaderText(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # I

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->getHeader(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void
.end method

.method public static setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->getHeader(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public static setIllustration(Landroid/app/Activity;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "asset"    # I

    .prologue
    const v7, 0x7f100313

    .line 123
    const v6, 0x7f100235

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/widget/SetupWizardIllustration;

    .line 125
    .local v2, "illustration":Lcom/android/cyanogenmod/settings/widget/SetupWizardIllustration;
    if-eqz v2, :cond_1

    .line 126
    const v6, 0x7f020131

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 128
    .local v4, "newIllustration":Landroid/graphics/drawable/Drawable;
    instance-of v6, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_1

    move-object v3, v0

    .line 129
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 130
    .local v3, "layers":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 131
    .local v5, "oldIllustration":Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 133
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "oldIllustration":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v1

    .local v1, "gravity":I
    move-object v6, v4

    .line 134
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 136
    .end local v1    # "gravity":I
    :cond_0
    invoke-virtual {v3, v7, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 137
    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/widget/SetupWizardIllustration;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "newIllustration":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public static setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "navBar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "useImmersiveMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "useImmersiveMode":Z
    invoke-virtual {p1, v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->setUseImmersiveMode(Z)V

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 97
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 98
    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
