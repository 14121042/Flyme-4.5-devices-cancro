.class public final Lcyanogenmod/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/ConnectionSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 174
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 175
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 428
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 435
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 436
    return-void

    :cond_1
    move v3, v5

    .line 430
    goto :goto_0

    :cond_2
    move v4, v5

    .line 432
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 211
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 200
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 202
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 396
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 401
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 405
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 412
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 415
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v5

    .line 406
    goto :goto_0

    :cond_1
    move v4, v5

    .line 408
    goto :goto_1
.end method
