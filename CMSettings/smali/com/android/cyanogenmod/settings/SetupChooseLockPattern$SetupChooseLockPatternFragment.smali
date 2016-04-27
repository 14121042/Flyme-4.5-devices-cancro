.class public Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mRetryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 157
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleLeftButton()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    const v2, 0x7f0400f1

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .local v0, "setupContent":Landroid/view/ViewGroup;
    const v2, 0x7f0400ed

    invoke-virtual {p1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pattern_size"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    iput-byte v2, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    .line 117
    iget-byte v2, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 118
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/internal/widget/LockPatternView$Cell;

    iget-byte v3, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v5, v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    aput-object v3, v2, v5

    iget-byte v3, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v5, v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v4, v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    aput-object v3, v2, v6

    iget-byte v3, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mPatternSize:B

    invoke-static {v6, v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 123
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const v0, 0x7f100234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020135

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;

    .line 172
    .local v0, "activity":Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;
    # getter for: Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->access$000(Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 2
    .param p1, "text"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;

    .line 178
    .local v0, "activity":Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;
    # getter for: Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;->access$000(Lcom/android/cyanogenmod/settings/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    .line 179
    return-void
.end method

.method protected updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 185
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    sget-object v0, Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/cyanogenmod/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
