.class Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTemperatureSeekBar"
.end annotation


# instance fields
.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 2
    .param p2, "seekBar"    # Landroid/widget/SeekBar;
    .param p3, "value"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 227
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 231
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x1

    .line 235
    if-eqz p3, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    # invokes: Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->updateTemperature(Z)V
    invoke-static {v0, v3}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->access$400(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;Z)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;->access$500(Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090340

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    mul-int/lit8 v5, p2, 0x64

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 254
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 259
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 243
    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v0, v1, -0x3e8

    .line 244
    .local v0, "p":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 245
    return-void
.end method
