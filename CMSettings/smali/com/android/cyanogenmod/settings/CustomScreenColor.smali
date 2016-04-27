.class public Lcom/android/cyanogenmod/settings/CustomScreenColor;
.super Landroid/app/Activity;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/CustomScreenColor$1;,
        Lcom/android/cyanogenmod/settings/CustomScreenColor$MyMenuItemclick;,
        Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;
    }
.end annotation


# instance fields
.field private canRestorePreview:Z

.field private mCBar:Landroid/widget/SeekBar;

.field private mCTv:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContrastValue:I

.field private mDefaultContrastValue:I

.field private mDefaultHueValue:I

.field private mDefaultIntensityValue:I

.field private mDefaultSaturationValue:I

.field private mHBar:Landroid/widget/SeekBar;

.field private mHTv:Landroid/widget/TextView;

.field private mHueValue:I

.field private mIBar:Landroid/widget/SeekBar;

.field private mITv:Landroid/widget/TextView;

.field private mIncreaseC:Landroid/widget/ImageView;

.field private mIncreaseH:Landroid/widget/ImageView;

.field private mIncreaseI:Landroid/widget/ImageView;

.field private mIncreaseS:Landroid/widget/ImageView;

.field private mIntensityValue:I

.field private mMaxContrastValue:I

.field private mMaxHueValue:I

.field private mMaxIntensityValue:I

.field private mMaxSaturationValue:I

.field private mMore:Landroid/widget/ImageView;

.field private mNewBtn:Landroid/widget/Button;

.field mPPService:Lcom/android/display/IPPService;

.field mPPServiceConn:Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

.field private mPreviousBtn:Landroid/widget/Button;

.field private mRLayout:Landroid/widget/RelativeLayout;

.field private mReduceC:Landroid/widget/ImageView;

.field private mReduceH:Landroid/widget/ImageView;

.field private mReduceI:Landroid/widget/ImageView;

.field private mReduceS:Landroid/widget/ImageView;

.field private mSBar:Landroid/widget/SeekBar;

.field private mSTv:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSaveBtn:Landroid/widget/Button;

.field private mScreenColorLayout:Landroid/widget/LinearLayout;

.field private mUpdown:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    .line 107
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    .line 108
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    .line 109
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    .line 111
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    .line 112
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 113
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 114
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 115
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 116
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 117
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 118
    iput v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 123
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    .line 124
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

    .line 696
    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/CustomScreenColor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CustomScreenColor;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CustomScreenColor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CustomScreenColor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->selectPicFromGallery2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CustomScreenColor;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreDefaultHSCI()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 620
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 621
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    .local v4, "width":I
    const/4 v3, 0x1

    .line 624
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 626
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 627
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 632
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 633
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 637
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private changePreviewByData(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 582
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    .line 583
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 585
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private getScreenColorPreviewKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 665
    const-string v1, "screencolor_preview_name"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 667
    .local v0, "share":Landroid/content/SharedPreferences;
    const-string v1, "screencolor_preview_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBtnsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 547
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 548
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 551
    return-void
.end method

.method private initPPService()V
    .locals 7

    .prologue
    .line 231
    new-instance v5, Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;-><init>(Lcom/android/cyanogenmod/settings/CustomScreenColor;Lcom/android/cyanogenmod/settings/CustomScreenColor$1;)V

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

    .line 232
    const-string v2, "com.qualcomm.display"

    .line 233
    .local v2, "packetname":Ljava/lang/String;
    const-string v4, "com.qualcomm.display.PPService"

    .line 234
    .local v4, "service":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/display/IPPService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 240
    .local v3, "ret":Z
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    .line 157
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 158
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 159
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 160
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 161
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 162
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 163
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 165
    const v3, 0x7f100077

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    .line 166
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getScreenColorPreviewKey()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "previewContent":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    .line 174
    :goto_0
    const v3, 0x7f100081

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    .line 175
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 176
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v3, 0x7f100085

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    .line 179
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 180
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 181
    const v3, 0x7f100089

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    .line 182
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 183
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 184
    const v3, 0x7f100092

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    .line 185
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 186
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    const v3, 0x7f10008d

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    .line 188
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 189
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    const v3, 0x7f100082

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f100086

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f10008a

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f100083

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    .line 197
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v3, 0x7f100084

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    .line 199
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v3, 0x7f100087

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    .line 201
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v3, 0x7f100088

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    .line 203
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    .line 205
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v3, 0x7f100091

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    .line 207
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v3, 0x7f10008b

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    .line 209
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    .line 211
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v3, 0x7f10007c

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    .line 214
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v3, 0x7f10007d

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    .line 216
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v3, 0x7f10007e

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    .line 219
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v3, 0x7f10007f

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    .line 221
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v3, 0x7f100079

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    .line 223
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v3, 0x7f10007a

    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    .line 225
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->initBtnsStatus()V

    .line 228
    return-void

    .line 170
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    .local v2, "previewUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private previewNewHSIC()V
    .locals 6

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 520
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 521
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 522
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 523
    const-string v1, "CustomScreenColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewNewHSIC mHueValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSaturationValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContrastValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIntensityValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomScreenColor"

    const-string v2, "updateHSIC exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private previousOrNewHSCI(Z)V
    .locals 4
    .param p1, "isPrevious"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 554
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 558
    :cond_0
    if-eqz p1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 560
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 561
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 571
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 566
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->previewNewHSIC()V

    goto :goto_0
.end method

.method private resotreBackgroundByDefault()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 642
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->canRestorePreview:Z

    .line 644
    return-void
.end method

.method private restoreDefaultHSCI()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 488
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 489
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 490
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 491
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 492
    return-void
.end method

.method private restoreSavedHSCI(Z)V
    .locals 9
    .param p1, "setProgress"    # Z

    .prologue
    .line 495
    const-string v6, "screencolor_preview_name"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 497
    .local v5, "share":Landroid/content/SharedPreferences;
    const-string v6, "hue"

    iget v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 498
    .local v2, "hueValue":I
    const-string v6, "saturation"

    iget v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 499
    .local v4, "saturationValue":I
    const-string v6, "intensity"

    iget v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 500
    .local v3, "intensityValue":I
    const-string v6, "contrast"

    iget v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 501
    .local v0, "contrastValue":I
    if-eqz p1, :cond_0

    .line 502
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 503
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 504
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 505
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 507
    :cond_0
    const-string v6, "CustomScreenColor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSavedHSCI hueValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saturationValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contrastValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intensityValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :try_start_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6, v2, v4, v3, v0}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "CustomScreenColor"

    const-string v7, "updateHSIC exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveHSCI()V
    .locals 4

    .prologue
    .line 575
    iget v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    iget v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->saveHSICPreference(IIII)V

    .line 576
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->finish()V

    .line 577
    return-void
.end method

.method private saveHSICPreference(IIII)V
    .locals 4
    .param p1, "h"    # I
    .param p2, "s"    # I
    .param p3, "i"    # I
    .param p4, "c"    # I

    .prologue
    .line 655
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 656
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hue"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    const-string v2, "saturation"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v2, "intensity"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 660
    const-string v2, "contrast"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 662
    return-void
.end method

.method private savePreviewKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 648
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 649
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 650
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencolor_preview_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    return-void
.end method

.method private selectPicFromGallery2()V
    .locals 2

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 484
    return-void
.end method

.method private setActivated(Landroid/widget/SeekBar;Z)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "isActivated"    # Z

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 399
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 401
    :sswitch_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 402
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 405
    :sswitch_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 409
    :sswitch_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 413
    :sswitch_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x7f100085 -> :sswitch_0
        0x7f100089 -> :sswitch_1
        0x7f10008d -> :sswitch_3
        0x7f100092 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundByUri(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 588
    const/4 v3, 0x0

    .line 590
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 591
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 592
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 593
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 594
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 595
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 596
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 597
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 599
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 600
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 601
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    if-eqz v3, :cond_0

    .line 609
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->canRestorePreview:Z

    .line 616
    return-void

    .line 610
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 602
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 603
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    if-eqz v3, :cond_0

    .line 609
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 610
    :catch_2
    move-exception v2

    .line 611
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 604
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 605
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 607
    if-eqz v3, :cond_0

    .line 609
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 610
    :catch_4
    move-exception v2

    .line 611
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 607
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 609
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 612
    :cond_1
    :goto_1
    throw v5

    .line 610
    :catch_5
    move-exception v2

    .line 611
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setNewBtnHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 537
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 538
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 539
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    return-void
.end method

.method private showMoreMenus()V
    .locals 4

    .prologue
    .line 681
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 682
    .local v1, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 683
    .local v0, "menu":Landroid/view/Menu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f11000b

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 685
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v2, :cond_0

    .line 686
    const v2, 0x7f100334

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 692
    :goto_0
    new-instance v2, Lcom/android/cyanogenmod/settings/CustomScreenColor$MyMenuItemclick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/cyanogenmod/settings/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/android/cyanogenmod/settings/CustomScreenColor;Lcom/android/cyanogenmod/settings/CustomScreenColor$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 693
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 694
    return-void

    .line 688
    :cond_0
    const v2, 0x7f100332

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 689
    const v2, 0x7f100333

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method private upDownHSCISettingLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 671
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 678
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 277
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 278
    const-string v0, "CustomScreenColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->changePreviewByData(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 425
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    :pswitch_0
    return-void

    .line 427
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->finish()V

    goto :goto_0

    .line 431
    :pswitch_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->saveHSCI()V

    goto :goto_0

    .line 434
    :pswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 437
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 440
    :pswitch_5
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->upDownHSCISettingLayout()V

    goto :goto_0

    .line 443
    :pswitch_6
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->showMoreMenus()V

    goto :goto_0

    .line 446
    :pswitch_7
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, -0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 449
    :pswitch_8
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    goto :goto_1

    .line 452
    :pswitch_9
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_2

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, -0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 456
    :pswitch_a
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    if-ge v1, v3, :cond_3

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    goto :goto_2

    .line 460
    :pswitch_b
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_4

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, -0x1

    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 464
    :pswitch_c
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    if-ge v1, v3, :cond_5

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    goto :goto_3

    .line 468
    :pswitch_d
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_6

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, -0x1

    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 472
    :pswitch_e
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    goto :goto_4

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f100079
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->initPPService()V

    .line 130
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 131
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->initView()V

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f09021b

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    const/4 v0, 0x2

    const v1, 0x7f09021a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 294
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 295
    const v0, 0x7f090218

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 297
    const v0, 0x7f090219

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 299
    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 300
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/cyanogenmod/settings/CustomScreenColor$PPServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->unbindService(Landroid/content/ServiceConnection;)V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 319
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->finish()V

    .line 336
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :sswitch_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 325
    :sswitch_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 328
    :sswitch_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    goto :goto_1

    .line 331
    :sswitch_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->restoreDefaultHSCI()V

    goto :goto_1

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 305
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 307
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 312
    :goto_0
    return v1

    .line 309
    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 310
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 340
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 341
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    .line 342
    .local v1, "id":I
    const/4 v2, 0x0

    .line 344
    .local v2, "mid":I
    sparse-switch v1, :sswitch_data_0

    .line 376
    :goto_0
    const-string v3, "CustomScreenColor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged mHueValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSaturationValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNewContrastValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIntensityValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v3}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v4, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    iget v5, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    iget v6, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    iget v7, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_1
    return-void

    .line 346
    :sswitch_0
    iput p2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHueValue:I

    .line 348
    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxHueValue:I

    div-int/lit8 v2, v3, 0x2

    .line 349
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    const v4, 0x7f09021c

    new-array v5, v5, [Ljava/lang/Object;

    sub-int v6, p2, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :sswitch_1
    iput p2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSaturationValue:I

    .line 354
    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxSaturationValue:I

    div-int/lit8 v2, v3, 0x2

    .line 355
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    const v4, 0x7f09021d

    new-array v5, v5, [Ljava/lang/Object;

    sub-int v6, p2, v2

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 359
    :sswitch_2
    iput p2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mContrastValue:I

    .line 361
    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxContrastValue:I

    div-int/lit8 v2, v3, 0x2

    .line 362
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    const v4, 0x7f09021e

    new-array v5, v5, [Ljava/lang/Object;

    sub-int v6, p2, v2

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 366
    :sswitch_3
    iput p2, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mIntensityValue:I

    .line 368
    iget v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mMaxIntensityValue:I

    div-int/lit8 v2, v3, 0x2

    .line 369
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    const v4, 0x7f09021f

    new-array v5, v5, [Ljava/lang/Object;

    sub-int v6, p2, v2

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CustomScreenColor"

    const-string v4, "updateHSIC exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100085 -> :sswitch_0
        0x7f100089 -> :sswitch_1
        0x7f10008d -> :sswitch_2
        0x7f100092 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 391
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 395
    return-void
.end method
