.class public Lcom/android/cyanogenmod/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorage:Landroid/widget/CheckBox;

.field private mInternalStorageContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 125
    new-instance v0, Lcom/android/cyanogenmod/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/MasterClear$1;-><init>(Lcom/android/cyanogenmod/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MasterClear;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MasterClear;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MasterClear;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f10015a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 148
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f10015c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    .line 150
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f10015b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f100156

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f100157

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 154
    const/4 v0, 0x0

    .line 164
    .local v0, "hasExternalStorage":Z
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    new-instance v5, Lcom/android/cyanogenmod/settings/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/cyanogenmod/settings/MasterClear$2;-><init>(Lcom/android/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f100159

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, "internalSummaryText":Landroid/widget/TextView;
    const v2, 0x7f09037a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    .end local v1    # "internalSummaryText":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v0, 0x1

    .line 196
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 197
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v3, Lcom/android/cyanogenmod/settings/MasterClear$3;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/MasterClear$3;-><init>(Lcom/android/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 166
    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-static {}, Landroid/os/Environment;->isNoEmulatedStorageExist()Z

    move-result v0

    goto :goto_1

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 210
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 v2, 0x0

    const v3, 0x7f0907b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/MasterClearConfirm;->createInstance(ZZ)Lcom/android/cyanogenmod/settings/MasterClearConfirm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/cyanogenmod/settings/MasterClearConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/MasterClearConfirm;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 97
    if-eq p2, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 107
    if-ne p2, v1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    const v0, 0x7f040082

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_1
    const v0, 0x7f040080

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 225
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->establishInitialState()V

    .line 226
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 242
    invoke-static {}, Lcom/android/cyanogenmod/settings/SecuritySettings;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09036e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c96

    new-instance v2, Lcom/android/cyanogenmod/settings/MasterClear$5;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/MasterClear$5;-><init>(Lcom/android/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09055f

    new-instance v2, Lcom/android/cyanogenmod/settings/MasterClear$4;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/MasterClear$4;-><init>(Lcom/android/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 263
    :cond_0
    return-void
.end method
