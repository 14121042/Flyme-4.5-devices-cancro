.class public Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;
.super Landroid/preference/DialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDefaultValue:I

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mMaxValue:I

.field private mMinValue:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private mWarning:Landroid/widget/TextView;

.field private mWarningValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 65
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    const v0, 0x7f04010b

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mDefaultValue:I

    return v0
.end method

.method static synthetic access$300(DDI)I
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->intensityToPercent(DDI)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private static intensityToPercent(DDI)I
    .locals 8
    .param p0, "minValue"    # D
    .param p2, "maxValue"    # D
    .param p4, "value"    # I

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 198
    int-to-double v2, p4

    sub-double/2addr v2, p0

    sub-double v4, p2, p0

    div-double v4, v6, v4

    mul-double v0, v2, v4

    .line 200
    .local v0, "percent":D
    cmpl-double v2, v0, v6

    if-lez v2, :cond_1

    .line 201
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 206
    :cond_0
    :goto_0
    double-to-int v2, v0

    return v2

    .line 202
    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 203
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static percentToIntensity(III)I
    .locals 2
    .param p0, "minValue"    # I
    .param p1, "maxValue"    # I
    .param p2, "percent"    # I

    .prologue
    .line 210
    sub-int v1, p1, p0

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v1, p0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 212
    .local v0, "value":I
    if-le v0, p1, :cond_1

    .line 213
    move v0, p1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    if-ge v0, p0, :cond_0

    .line 215
    move v0, p0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 154
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v7, 0x400

    invoke-virtual {v1, v7}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 158
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v6

    .line 159
    .local v6, "vibrator":I
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v3

    .line 160
    .local v3, "min":I
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v2

    .line 161
    .local v2, "max":I
    int-to-double v8, v3

    int-to-double v10, v2

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v7

    invoke-static {v8, v9, v10, v11, v7}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->intensityToPercent(DDI)I

    move-result v0

    .line 163
    .local v0, "defaultValue":I
    const-string v7, "vibrator_intensity"

    invoke-interface {v5, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 165
    .local v4, "percent":I
    invoke-static {v3, v2, v4}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->percentToIntensity(III)I

    move-result v7

    invoke-virtual {v1, v7}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super/range {p0 .. p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 86
    const v8, 0x1020364

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    const v8, 0x7f100041

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    .line 88
    const v8, 0x7f100268

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    .line 91
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v8}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 92
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v8}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorWarningIntensity()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarningValue:I

    .line 93
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v8}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    .line 94
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v8}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    .line 95
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v8}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mDefaultValue:I

    .line 96
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v8, :cond_2

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090207

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    int-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarningValue:I

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->intensityToPercent(DDI)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 106
    .local v7, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_1

    move-object v3, v7

    .line 107
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 108
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    const v8, 0x102000d

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 111
    new-instance v8, Landroid/graphics/LightingColorFilter;

    const/high16 v9, -0x1000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1060016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 116
    .local v6, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    int-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mDefaultValue:I

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->intensityToPercent(DDI)I

    move-result v2

    .line 117
    .local v2, "defaultValue":I
    const-string v8, "vibrator_intensity"

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 119
    .local v5, "percent":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    return-void

    .line 101
    .end local v2    # "defaultValue":I
    .end local v5    # "percent":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 143
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vibrator_intensity"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 74
    const v0, 0x7f090223

    new-instance v1, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity$1;-><init>(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    int-to-double v6, v3

    iget v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    int-to-double v8, v3

    iget v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mWarningValue:I

    invoke-static {v6, v7, v8, v9, v3}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->intensityToPercent(DDI)I

    move-result v3

    if-lt p2, v3, :cond_3

    move v0, v1

    .line 174
    .local v0, "shouldWarn":Z
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget v4, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMinValue:I

    iget v5, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v4, v5, p2}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->percentToIntensity(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    .line 183
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void

    .end local v0    # "shouldWarn":Z
    :cond_3
    move v0, v2

    .line 170
    goto :goto_0

    .restart local v0    # "shouldWarn":Z
    :cond_4
    move-object v3, v4

    .line 175
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 194
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 195
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 130
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 131
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity$2;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity$2;-><init>(Lcom/android/cyanogenmod/settings/hardware/VibratorIntensity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method
