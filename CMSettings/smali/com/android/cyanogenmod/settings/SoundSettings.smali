.class public Lcom/android/cyanogenmod/settings/SoundSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;,
        Lcom/android/cyanogenmod/settings/SoundSettings$H;,
        Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;,
        Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;

.field private mIncreasingRing:Landroid/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;

.field private mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

.field private mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/cyanogenmod/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/SoundSettings;->TAG:Ljava/lang/String;

    .line 606
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/SoundSettings$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;Lcom/android/cyanogenmod/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeCallback:Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

    .line 91
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/SoundSettings$1;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    .line 101
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$H;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;Lcom/android/cyanogenmod/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;

    .line 102
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;

    .line 103
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;Lcom/android/cyanogenmod/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mReceiver:Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingerMode:I

    .line 340
    new-instance v0, Lcom/android/cyanogenmod/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/SoundSettings$2;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 577
    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeCallback:Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateNotificationPreferenceState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mHandler:Lcom/android/cyanogenmod/settings/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/SoundSettings;)Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/SoundSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SoundSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 253
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 255
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 256
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 258
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 259
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 268
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/cyanogenmod/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initIncreasingRing(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 411
    const-string v0, "increasing_ring"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 413
    const-string v0, "increasing_ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    .line 416
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->setCallback(Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 13
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 305
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isUserOwner()Z

    move-result v1

    .line 306
    .local v1, "isOwner":Z
    const-string v7, "ringtone"

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;

    .line 308
    .local v2, "phoneRingtonePreference":Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;
    if-eqz v2, :cond_2

    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    if-nez v1, :cond_2

    .line 309
    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    iput-object v12, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 333
    :cond_1
    :goto_0
    const-string v7, "notification_ringtone"

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 334
    return-void

    .line 312
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 313
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 315
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    const-string v7, "sounds"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 318
    .local v4, "soundCategory":Landroid/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 319
    new-instance v3, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v12}, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    .local v3, "ringtonePreference":Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;
    const v7, 0x7f090334

    new-array v8, v11, [Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/cyanogenmod/settings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v3, v0}, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 324
    invoke-virtual {v3, v10}, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;->setOrder(I)V

    .line 325
    invoke-virtual {v3, v11}, Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 326
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "i":I
    .end local v3    # "ringtonePreference":Lcom/android/cyanogenmod/settings/DefaultRingtonePreference;
    .end local v4    # "soundCategory":Landroid/preference/PreferenceCategory;
    .end local v6    # "title":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 435
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 436
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Lcom/android/cyanogenmod/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isUserOwner()Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 446
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateVibrateWhenRinging()V

    .line 447
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/cyanogenmod/settings/SoundSettings$3;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/SoundSettings$3;-><init>(Lcom/android/cyanogenmod/settings/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 214
    .local v0, "volumePref":Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    .end local v0    # "volumePref":Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    :goto_0
    return-object v0

    .line 215
    .restart local v0    # "volumePref":Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeCallback:Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 216
    invoke-virtual {v0, p2}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 217
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0, p3}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 485
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 487
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 501
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 490
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 491
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 492
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 241
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 243
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 244
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    const v3, 0x104076f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 249
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateNotificationPreferenceState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 465
    const-string v3, "notification_volume"

    const/4 v4, 0x5

    const v5, 0x1080320

    invoke-direct {p0, v3, v4, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 469
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_link_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 473
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 480
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 470
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v2

    .line 474
    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const v0, 0x1080320

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 230
    :cond_0
    return-void

    .line 224
    :cond_1
    iget v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const v0, 0x1080321

    goto :goto_0

    :cond_2
    const v0, 0x108031f

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 234
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingerMode:I

    .line 236
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 365
    if-nez p0, :cond_1

    .line 366
    sget-object v0, Lcom/android/cyanogenmod/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-object v7

    .line 370
    :cond_1
    if-ne p1, v0, :cond_2

    if-gtz p2, :cond_3

    .line 371
    :cond_2
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_1
    const v0, 0x1040591

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 378
    const v0, 0x104058f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 373
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_1

    .line 380
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x0

    .line 382
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 390
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 400
    :cond_6
    if-eqz v6, :cond_0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 386
    :cond_7
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 395
    :catch_0
    move-exception v0

    .line 400
    if-eqz v6, :cond_0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 397
    :catch_1
    move-exception v0

    .line 400
    if-eqz v6, :cond_0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    .line 128
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 129
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/cyanogenmod/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    .line 131
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 132
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 133
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 137
    :cond_0
    const v5, 0x7f06004d

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 139
    const-string v5, "volumes"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 140
    .local v4, "volumes":Landroid/preference/PreferenceCategory;
    const-string v5, "sounds"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 141
    .local v2, "sounds":Landroid/preference/PreferenceCategory;
    const-string v5, "vibrate"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 143
    .local v3, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v5, "media_volume"

    const/4 v6, 0x3

    const v7, 0x1080323

    invoke-direct {p0, v5, v6, v7}, Lcom/android/cyanogenmod/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 145
    const-string v5, "alarm_volume"

    const/4 v6, 0x4

    const v7, 0x1080314

    invoke-direct {p0, v5, v6, v7}, Lcom/android/cyanogenmod/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 147
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v5, :cond_2

    .line 148
    const-string v5, "ring_volume"

    const/4 v6, 0x2

    const v7, 0x1080320

    invoke-direct {p0, v5, v6, v7}, Lcom/android/cyanogenmod/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mRingPreference:Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 151
    const-string v5, "volume_link_notification"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 158
    :goto_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 159
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v5, 0x400

    invoke-virtual {v0, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    const-string v5, "vibration_intensity"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 161
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    .end local v1    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 167
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/SoundSettings;->initIncreasingRing(Landroid/preference/PreferenceCategory;)V

    .line 168
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 170
    const-string v5, "manage_notification_access"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 171
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->refreshNotificationListeners()V

    .line 172
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingerMode()V

    .line 173
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateEffectsSuppressor()V

    .line 174
    return-void

    .line 154
    .end local v0    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    :cond_2
    const-string v5, "ring_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    const-string v5, "volume_link_notification"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumeCallback:Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 198
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mReceiver:Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;->register(Z)V

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->refreshNotificationListeners()V

    .line 180
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->lookupRingtoneNames()V

    .line 181
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateNotificationPreferenceState()V

    .line 182
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mReceiver:Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/SoundSettings$Receiver;->register(Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateRingOrNotificationPreference()V

    .line 185
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SoundSettings;->updateEffectsSuppressor()V

    .line 186
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;

    .line 187
    .local v1, "volumePref":Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 189
    .end local v1    # "volumePref":Lcom/android/cyanogenmod/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/notification/IncreasingRingVolumePreference;->onActivityResume()V

    .line 192
    :cond_1
    return-void
.end method
