.class public Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/cyanogenmod/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 131
    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 133
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, p2, v1}, Lcom/android/cyanogenmod/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V

    .line 135
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 161
    invoke-static {p1, p2, p3}, Lcom/android/cyanogenmod/settings/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 164
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isFingerprintFallback"    # Z
    .param p5, "minLength"    # I
    .param p6, "maxLength"    # I
    .param p7, "requirePasswordToDecrypt"    # Z
    .param p8, "confirmCredentials"    # Z

    .prologue
    .line 141
    invoke-static/range {p1 .. p8}, Lcom/android/cyanogenmod/settings/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IZZIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 145
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "isFingerprintFallback"    # Z
    .param p4, "requirePassword"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 152
    invoke-static {p1, p2, p4, p3, p5}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 155
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 81
    const v7, 0x7f0400ef

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, "view":Landroid/view/View;
    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 83
    .local v4, "list":Landroid/widget/ListView;
    const v7, 0x7f100005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, "title":Landroid/view/View;
    if-nez v5, :cond_0

    .line 85
    const v7, 0x7f0400f4

    invoke-virtual {p1, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "header":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 87
    const v7, 0x7f100180

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, "details":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 90
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "details"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "detailsText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v0    # "details":Landroid/widget/TextView;
    .end local v1    # "detailsText":Ljava/lang/String;
    .end local v2    # "header":Landroid/view/View;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v6
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020136

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
