.class public final Lcyanogenmod/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/Profile$ProfileTrigger;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

.field private mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

.field private mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

.field private mDirty:Z

.field private mDozeMode:I

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mRingMode:Lcyanogenmod/profiles/RingModeSettings;

.field private mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcyanogenmod/app/Profile$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    .line 71
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    .line 85
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 87
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 89
    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 91
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 93
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 95
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 385
    invoke-virtual {p0, p1}, Lcyanogenmod/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/Profile$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameResId"    # I
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    .line 71
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    .line 85
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 87
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 89
    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 91
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 93
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 95
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 377
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 378
    iput p2, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 379
    iput-object p3, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 380
    iput v1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 381
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 382
    return-void
.end method


# virtual methods
.method public addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V
    .locals 2
    .param p1, "profileGroup"    # Lcyanogenmod/app/ProfileGroup;

    .prologue
    .line 468
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    if-nez v0, :cond_0

    .line 477
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    .line 479
    :cond_2
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    goto :goto_0
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 771
    if-eqz p1, :cond_0

    .line 772
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 775
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 453
    move-object v0, p1

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 454
    .local v0, "tmp":Lcyanogenmod/app/Profile;
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 455
    const/4 v1, -0x1

    .line 459
    :goto_0
    return v1

    .line 456
    :cond_0
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 457
    const/4 v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getAirplaneMode()Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getBrightness()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getDefaultGroup()Lcyanogenmod/app/ProfileGroup;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getDozeMode()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 512
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Lcyanogenmod/app/ProfileGroup;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcyanogenmod/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getRingMode()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getScreenLockMode()Lcyanogenmod/profiles/LockSettings;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    return-object v0
.end method

.method public getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Lcyanogenmod/profiles/StreamSettings;
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/StreamSettings;

    return-object v0
.end method

.method public getTriggerState(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 395
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/app/Profile$ProfileTrigger;

    move-object v0, v1

    .line 396
    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :goto_0
    if-eqz v0, :cond_1

    .line 397
    # getter for: Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0}, Lcyanogenmod/app/Profile$ProfileTrigger;->access$200(Lcyanogenmod/app/Profile$ProfileTrigger;)I

    move-result v1

    .line 399
    :goto_1
    return v1

    .line 395
    .end local v0    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    .restart local v0    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getTriggersFromType(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 410
    .local v1, "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 411
    .local v3, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v3}, Lcyanogenmod/app/Profile$ProfileTrigger;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 412
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v1    # "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    .end local v3    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 743
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 636
    .local v7, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    .local v6, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    .line 642
    .local v8, "startPosition":I
    const/4 v12, 0x2

    if-lt v7, v12, :cond_f

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_1

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 649
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2

    .line 650
    sget-object v12, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    invoke-virtual {v12}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 652
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_3

    .line 653
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .local v5, "parcel":Landroid/os/Parcelable;
    move-object v11, v5

    .line 654
    check-cast v11, Landroid/os/ParcelUuid;

    .line 655
    .local v11, "u":Landroid/os/ParcelUuid;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 658
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "parcel":Landroid/os/Parcelable;
    .end local v11    # "u":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_7

    .line 662
    sget-object v12, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/ProfileGroup;

    .local v0, "arr$":[Lcyanogenmod/app/ProfileGroup;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    .line 663
    .local v2, "group":Lcyanogenmod/app/ProfileGroup;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v2}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-interface {v12, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-virtual {v2}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 665
    iput-object v2, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    .line 662
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 658
    .end local v0    # "arr$":[Lcyanogenmod/app/ProfileGroup;
    .end local v2    # "group":Lcyanogenmod/app/ProfileGroup;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 660
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 669
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_8

    .line 670
    sget-object v12, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/profiles/StreamSettings;

    .local v0, "arr$":[Lcyanogenmod/profiles/StreamSettings;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v4, :cond_8

    aget-object v9, v0, v3

    .line 671
    .local v9, "stream":Lcyanogenmod/profiles/StreamSettings;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v9}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 674
    .end local v0    # "arr$":[Lcyanogenmod/profiles/StreamSettings;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "stream":Lcyanogenmod/profiles/StreamSettings;
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_9

    .line 676
    sget-object v12, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/profiles/ConnectionSettings;

    .local v0, "arr$":[Lcyanogenmod/profiles/ConnectionSettings;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v4, :cond_9

    aget-object v1, v0, v3

    .line 677
    .local v1, "connection":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 680
    .end local v0    # "arr$":[Lcyanogenmod/profiles/ConnectionSettings;
    .end local v1    # "connection":Lcyanogenmod/profiles/ConnectionSettings;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_a

    .line 681
    sget-object v12, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcyanogenmod/profiles/RingModeSettings;

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 683
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_b

    .line 684
    sget-object v12, Lcyanogenmod/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcyanogenmod/profiles/AirplaneModeSettings;

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 686
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_c

    .line 687
    sget-object v12, Lcyanogenmod/profiles/BrightnessSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcyanogenmod/profiles/BrightnessSettings;

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 689
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_d

    .line 690
    sget-object v12, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcyanogenmod/profiles/LockSettings;

    iput-object v12, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 692
    :cond_d
    sget-object v12, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/Profile$ProfileTrigger;

    .local v0, "arr$":[Lcyanogenmod/app/Profile$ProfileTrigger;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v4, :cond_e

    aget-object v10, v0, v3

    .line 693
    .local v10, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    # getter for: Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;
    invoke-static {v10}, Lcyanogenmod/app/Profile$ProfileTrigger;->access$300(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 695
    .end local v10    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 699
    .end local v0    # "arr$":[Lcyanogenmod/app/Profile$ProfileTrigger;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_f
    add-int v12, v8, v6

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 700
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 489
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 899
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 901
    return-void
.end method

.method public setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    .line 916
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 918
    return-void
.end method

.method public setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    .line 1256
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    return-void
.end method

.method public setDozeMode(I)V
    .locals 1
    .param p1, "dozeMode"    # I

    .prologue
    .line 877
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 879
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 883
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 884
    return-void

    .line 881
    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 715
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 716
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 718
    return-void
.end method

.method public setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    .line 821
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 823
    return-void
.end method

.method public setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V
    .locals 1
    .param p1, "screenLockMode"    # Lcyanogenmod/profiles/LockSettings;

    .prologue
    .line 838
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 840
    return-void
.end method

.method public setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/StreamSettings;

    .prologue
    .line 1231
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 1233
    return-void
.end method

.method public setTrigger(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 423
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x4

    if-le p3, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 431
    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 432
    if-eqz v0, :cond_2

    .line 433
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    goto :goto_0

    .line 435
    :cond_3
    if-eqz v0, :cond_4

    .line 436
    # setter for: Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0, p3}, Lcyanogenmod/app/Profile$ProfileTrigger;->access$202(Lcyanogenmod/app/Profile$ProfileTrigger;I)I

    goto :goto_1

    .line 438
    :cond_4
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v2, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-direct {v2, p1, p2, p3, p4}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 535
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 540
    .local v2, "sizePosition":I
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 544
    .local v3, "startPosition":I
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 545
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    :goto_0
    iget v6, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    if-eqz v6, :cond_1

    .line 551
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v6, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    :goto_1
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-eqz v6, :cond_2

    .line 557
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    new-instance v6, Landroid/os/ParcelUuid;

    iget-object v9, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v6, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v6, p1, v8}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_2
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 563
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v5, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 565
    .local v4, "u":Ljava/util/UUID;
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 548
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "u":Ljava/util/UUID;
    .end local v5    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 560
    :cond_2
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 567
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v5    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_3
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 572
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :goto_4
    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    if-eqz v6, :cond_5

    move v6, v7

    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget v6, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 576
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v9, v8, [Lcyanogenmod/app/ProfileGroup;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 582
    :goto_7
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 583
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v9, v8, [Lcyanogenmod/profiles/StreamSettings;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 589
    :goto_8
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 590
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v9, v8, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 596
    :goto_9
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    if-eqz v6, :cond_a

    .line 597
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/RingModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 602
    :goto_a
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    if-eqz v6, :cond_b

    .line 603
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/AirplaneModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    :goto_b
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    if-eqz v6, :cond_c

    .line 609
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/BrightnessSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 614
    :goto_c
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    if-eqz v6, :cond_d

    .line 615
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/LockSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_d
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v8, [Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 621
    iget v6, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v6, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int v1, v6, v3

    .line 626
    .local v1, "parcelableSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    add-int v6, v3, v1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 629
    return-void

    .line 570
    .end local v1    # "parcelableSize":I
    :cond_4
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    :cond_5
    move v6, v8

    .line 572
    goto/16 :goto_5

    :cond_6
    move v6, v8

    .line 574
    goto/16 :goto_6

    .line 580
    :cond_7
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 587
    :cond_8
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 594
    :cond_9
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 600
    :cond_a
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 606
    :cond_b
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 612
    :cond_c
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 618
    :cond_d
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d
.end method
