.class final Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/SoundSettings;Lcom/android/cyanogenmod/settings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/SoundSettings$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 276
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # getter for: Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$500(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # getter for: Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$500(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 282
    :cond_1
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 283
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # getter for: Lcom/android/cyanogenmod/settings/SoundSettings;->mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$200(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$H;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/cyanogenmod/settings/SoundSettings;

    # getter for: Lcom/android/cyanogenmod/settings/SoundSettings;->mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->access$200(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 292
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 298
    :cond_0
    return-void
.end method
