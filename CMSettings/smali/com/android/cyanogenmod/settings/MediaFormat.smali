.class public Lcom/android/cyanogenmod/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateTextView:Landroid/widget/TextView;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/cyanogenmod/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat$1;-><init>(Lcom/android/cyanogenmod/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/android/cyanogenmod/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat$2;-><init>(Lcom/android/cyanogenmod/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/MediaFormat;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f100161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const v0, 0x7f090261

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->setTitle(I)V

    .line 175
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const v0, 0x7f090262

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->setTitle(I)V

    .line 179
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f090262

    const v3, 0x7f090261

    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f100162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f100163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/MediaFormat;->setTitle(I)V

    .line 210
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f09025e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/MediaFormat;->setTitle(I)V

    .line 215
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public static isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v2

    const v3, 0x1040084

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 80
    .local v0, "isUicc":Z
    :cond_2
    goto :goto_0
.end method

.method public static isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v2

    const v3, 0x104067e

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 66
    .local v0, "isUsb":Z
    :cond_2
    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 110
    const v0, 0x7f090266

    .line 112
    .local v0, "explanationResId":I
    const v0, 0x7f0907c5

    .line 113
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const v0, 0x7f090267

    .line 120
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const v0, 0x7f090268

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 137
    :cond_1
    if-nez p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 225
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 226
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 231
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->establishInitialState()V

    .line 232
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/MediaFormat;->establishInitialState()V

    .line 245
    :cond_0
    return-void
.end method
