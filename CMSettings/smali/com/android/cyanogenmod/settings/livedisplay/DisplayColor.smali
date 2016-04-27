.class public Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;
.super Landroid/preference/DialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;,
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private final defaultRGB:F

.field private final mContext:Landroid/content/Context;

.field private final mCurrentColors:[F

.field private final mOriginalColors:[F

.field private mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

.field private final maxRGB:I

.field private final minRGB:I

.field private final useCMHW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f1000de
        0x7f1000e1
        0x7f1000e4
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x7f1000dd
        0x7f1000e0
        0x7f1000e3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x3

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    .line 69
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    .line 70
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    .line 75
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 78
    .local v0, "mHardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->useCMHW:Z

    .line 79
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->useCMHW:Z

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationMin()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->minRGB:I

    .line 81
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationMax()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->maxRGB:I

    .line 82
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationDefault()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->maxRGB:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    .line 90
    :goto_0
    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->setDialogLayoutResource(I)V

    .line 91
    return-void

    .line 85
    :cond_0
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->minRGB:I

    .line 86
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->maxRGB:I

    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;)[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;
    .param p1, "x1"    # [F

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method private updateColors([F)V
    .locals 4
    .param p1, "colors"    # [F

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_adjustment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 248
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 107
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_color_adjustment"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "colorAdjustmentTemp":Ljava/lang/String;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 112
    .local v0, "colorAdjustment":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    array-length v7, v0

    if-eq v7, v13, :cond_1

    .line 113
    :cond_0
    new-array v0, v13, [Ljava/lang/String;

    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    iget v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    iget v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v12

    .line 117
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 118
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 119
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v7, v10, v8, v10, v13}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v7, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v7, v7

    if-ge v3, v7, :cond_4

    .line 129
    sget-object v7, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/cyanogenmod/settings/IntervalSeekBar;

    .line 130
    .local v5, "seekBar":Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    sget-object v7, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, "value":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    new-instance v8, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;Lcom/android/cyanogenmod/settings/IntervalSeekBar;Landroid/widget/TextView;I)V

    aput-object v8, v7, v3

    .line 132
    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->useCMHW:Z

    if-eqz v7, :cond_2

    .line 133
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v7, v7, v3

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/cyanogenmod/settings/IntervalSeekBar;

    move-result-object v7

    iget v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->minRGB:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->maxRGB:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/cyanogenmod/settings/IntervalSeekBar;->setMinimum(F)V

    .line 136
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v7, v7, v3

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/cyanogenmod/settings/IntervalSeekBar;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/cyanogenmod/settings/IntervalSeekBar;->setMaximum(F)V

    .line 138
    :cond_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v7, v7, v3

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/cyanogenmod/settings/IntervalSeekBar;

    move-result-object v7

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/android/cyanogenmod/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 139
    const/high16 v7, 0x42c80000    # 100.0f

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v8, v8, v3

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 140
    .local v4, "percent":I
    const-string v7, "%d%%"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "percent":I
    .end local v5    # "seekBar":Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    .end local v6    # "value":Landroid/widget/TextView;
    :cond_3
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    .restart local v0    # "colorAdjustment":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    aput v8, v7, v10

    .line 122
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    aput v8, v7, v11

    .line 123
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->defaultRGB:F

    aput v8, v7, v12

    goto/16 :goto_1

    .line 142
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "i":I
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->updateColors([F)V

    .line 168
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 95
    const v0, 0x7f090223

    new-instance v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$1;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 205
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 196
    check-cast v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;

    .line 197
    .local v1, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;
    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 199
    iget-object v2, v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 200
    iget-object v2, v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v2, v2, v0

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/cyanogenmod/settings/IntervalSeekBar;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/cyanogenmod/settings/IntervalSeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 173
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 178
    :cond_1
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 179
    .local v0, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mCurrentColors:[F

    iput-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    .line 180
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    .line 183
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->updateColors([F)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 151
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 152
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$2;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$2;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method
