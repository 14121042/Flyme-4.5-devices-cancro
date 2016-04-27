.class public final Lcyanogenmod/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ProfileGroup$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcyanogenmod/app/ProfileGroup$1;

    invoke-direct {v0}, Lcyanogenmod/app/ProfileGroup$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 54
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 55
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 56
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 88
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/ProfileGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/ProfileGroup$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcyanogenmod/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "defaultGroup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 51
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 54
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 55
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 56
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 58
    iput-boolean v2, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 80
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 82
    iput-boolean p3, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 83
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "defaultGroup"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getSoundOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 307
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 309
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 312
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 313
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 315
    const-class v3, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 316
    const-class v3, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 317
    const-class v3, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 318
    const-class v3, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 321
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    return-void

    :cond_1
    move v3, v5

    .line 310
    goto :goto_0

    :cond_2
    move v4, v5

    .line 311
    goto :goto_1
.end method

.method public setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "lightsMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 184
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 186
    return-void
.end method

.method public setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "ringerMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 164
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 166
    return-void
.end method

.method public setRingerOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringer"    # Landroid/net/Uri;

    .prologue
    .line 144
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 146
    return-void
.end method

.method public setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "soundMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 154
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 156
    return-void
.end method

.method public setSoundOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 134
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 136
    return-void
.end method

.method public setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "vibrateMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 174
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 176
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 269
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 274
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 278
    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, p1, v5}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    iget-boolean v3, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v3, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 291
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 294
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v5

    .line 280
    goto :goto_0

    :cond_1
    move v4, v5

    .line 281
    goto :goto_1
.end method
