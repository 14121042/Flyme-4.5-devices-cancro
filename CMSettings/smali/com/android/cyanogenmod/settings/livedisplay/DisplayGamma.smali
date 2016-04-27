.class public Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;
.super Landroid/preference/DialogPreference;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;,
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
    }
.end annotation


# static fields
.field private static final BAR_COLORS:[I


# instance fields
.field private mCurrentColors:[[I

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mNumberOfControls:I

.field private mOriginalColors:[[I

.field private mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f09020a
        0x7f09020b
        0x7f09020c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 68
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getNumGammaControls()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 73
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    sget-object v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    .line 75
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 76
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 78
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)Lcyanogenmod/hardware/CMHardwareManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method private buildPreferenceValue([I)Ljava/lang/String;
    .locals 3
    .param p1, "colorValues"    # [I

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 248
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 249
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    :cond_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 254
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x3

    new-array v3, v6, [I

    .line 255
    .local v3, "rgb":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getNumGammaControls()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display_gamma_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 258
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "values":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v8

    .line 260
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v9

    .line 261
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v10

    .line 262
    invoke-virtual {v0, v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 255
    .end local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-super/range {p0 .. p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 95
    const v1, 0x7f1000e6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 96
    .local v8, "container":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 97
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 98
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 99
    .local v14, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c008e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "gammaDescriptors":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v3, v1, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2, v3}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v15, v15, v3

    array-length v15, v15

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_gamma_default_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "defaultKey":Ljava/lang/String;
    invoke-interface {v13, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 116
    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 119
    .local v11, "header":Landroid/widget/TextView;
    array-length v1, v10

    if-ge v3, v1, :cond_2

    .line 120
    aget-object v1, v10, v3

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_1
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    .end local v11    # "header":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationMin()I

    move-result v6

    .line 129
    .local v6, "min":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationMax()I

    move-result v7

    .line 130
    .local v7, "max":I
    const/4 v4, 0x0

    .local v4, "color":I
    :goto_2
    sget-object v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 131
    const v1, 0x7f040053

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 134
    .local v5, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v15, v1, v3

    new-instance v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;IILandroid/view/ViewGroup;II)V

    aput-object v1, v15, v4

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 139
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 122
    .end local v4    # "color":I
    .end local v5    # "item":Landroid/view/ViewGroup;
    .end local v6    # "min":I
    .end local v7    # "max":I
    .restart local v11    # "header":Landroid/widget/TextView;
    :cond_2
    const v1, 0x7f09020f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v15

    invoke-virtual {v14, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    .end local v11    # "header":Landroid/widget/TextView;
    .restart local v4    # "color":I
    .restart local v6    # "min":I
    .restart local v7    # "max":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 142
    .end local v4    # "color":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v9    # "defaultKey":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 178
    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_gamma_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3, v1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    if-eqz v2, :cond_1

    .line 186
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 83
    const v0, 0x7f090223

    new-instance v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$1;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    :cond_1
    return-void

    :cond_2
    move-object v2, p1

    .line 222
    check-cast v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    .line 223
    .local v2, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    iget v3, v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    iput v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 225
    iget-object v3, v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 226
    iget-object v3, v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 228
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v3, :cond_1

    .line 229
    const/4 v0, 0x0

    .local v0, "color":I
    :goto_1
    sget-object v3, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    invoke-virtual {v3, v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 194
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 195
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 211
    :goto_0
    return-object v1

    .line 200
    :cond_1
    new-instance v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    invoke-direct {v1, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 201
    .local v1, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
    iget v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    iput v3, v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    .line 202
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    iput-object v3, v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    .line 203
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    iput-object v3, v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v0, v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v4, v4, v0

    invoke-virtual {v3, v0, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 151
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 152
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method
