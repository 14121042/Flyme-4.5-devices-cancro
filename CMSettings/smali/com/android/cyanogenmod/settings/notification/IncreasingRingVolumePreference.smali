.class public Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;
.super Landroid/preference/Preference;
.source "IncreasingRingVolumePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRampUpTimeSeekBar:Landroid/widget/SeekBar;

.field private mRampUpTimeValue:Landroid/widget/TextView;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mMainHandler:Landroid/os/Handler;

    .line 80
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->setLayoutResource(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 82
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IncreasingRingMinVolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 187
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isSamplePlaying()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    .line 193
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private onSetVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setVolume(F)V

    .line 227
    :cond_0
    return-void
.end method

.method private onStartSample(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setVolume(F)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "IncreasingRingMinVolumePreference"

    const-string v2, "Error playing ringtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 250
    :cond_0
    return-void
.end method

.method private postStartSample(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 199
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v0

    .line 200
    .local v0, "playing":Z
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x3e8

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :cond_0
    return-void

    .line 202
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 241
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    return-void
.end method

.method private updateRampUpTimeValueLabel(I)V
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 105
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->onStartSample(F)V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->onStopSample()V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->onInitSample()V

    goto :goto_0

    .line 114
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->onSetVolume(F)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 90
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 96
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 99
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 125
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 127
    const v4, 0x7f1001aa

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 128
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v4, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    .line 131
    const v4, 0x7f1001ad

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    .line 132
    const v4, 0x7f1001ac

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "increasing_ring_start_vol"

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 137
    .local v3, "startVolume":F
    const-string v4, "increasing_ring_ramp_up_time"

    const/16 v5, 0xa

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "rampUpTime":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    div-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->updateRampUpTimeValueLabel(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_1

    .line 165
    const-string v2, "increasing_ring_start_vol"

    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_0

    .line 168
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v1, v2, 0x5

    .line 169
    .local v1, "seconds":I
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->updateRampUpTimeValueLabel(I)V

    .line 170
    if-eqz p3, :cond_0

    .line 171
    const-string v2, "increasing_ring_ramp_up_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    invoke-interface {v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;->onStartingSample()V

    .line 152
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->postStartSample(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    .line 86
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 237
    :cond_0
    return-void
.end method
