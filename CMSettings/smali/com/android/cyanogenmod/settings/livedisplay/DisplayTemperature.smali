.class public Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;
.super Landroid/preference/DialogPreference;
.source "DisplayTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;,
        Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private final mDefaultDayTemperature:I

.field private final mDefaultNightTemperature:I

.field private mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private mOriginalDayTemperature:I

.field private mOriginalNightTemperature:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultDayTemperature:I

    .line 59
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultNightTemperature:I

    .line 62
    const v0, 0x7f040054

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->setDialogLayoutResource(I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultDayTemperature:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultNightTemperature:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTemperature(Z)V
    .locals 6
    .param p1, "accept"    # Z

    .prologue
    const/4 v5, -0x2

    .line 204
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getProgress()I

    move-result v0

    .line 205
    .local v0, "day":I
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getProgress()I

    move-result v1

    .line 206
    .local v1, "night":I
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->callChangeListener(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_day"

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 212
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_night"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 215
    return-void

    .line 204
    .end local v0    # "day":I
    .end local v1    # "night":I
    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    goto :goto_0

    .line 205
    .restart local v0    # "day":I
    :cond_1
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    .line 77
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 79
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_temperature_day"

    iget v6, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultDayTemperature:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    .line 83
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_temperature_night"

    iget v6, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDefaultNightTemperature:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    .line 88
    const v4, 0x7f1000ec

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 89
    .local v0, "day":Landroid/widget/SeekBar;
    const v4, 0x7f1000eb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "dayText":Landroid/widget/TextView;
    new-instance v4, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    .line 92
    const v4, 0x7f1000ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 93
    .local v2, "night":Landroid/widget/SeekBar;
    const v4, 0x7f1000ee

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, "nightText":Landroid/widget/TextView;
    new-instance v4, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    .line 96
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 97
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 98
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    .line 122
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 67
    const v0, 0x7f090223

    new-instance v1, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$1;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;

    .line 153
    .local v0, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 155
    iget v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    .line 156
    iget v1, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    .line 157
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 158
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setProgress(I)V

    .line 160
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 127
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 132
    :cond_1
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 133
    .local v0, "myState":Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;
    iget v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iput v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    .line 134
    iget v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iput v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    .line 135
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    .line 136
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    .line 139
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 107
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 108
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$2;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$2;-><init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method
