.class public final Lcyanogenmod/profiles/StreamSettings;
.super Ljava/lang/Object;
.source "StreamSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mStreamId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcyanogenmod/profiles/StreamSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/StreamSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 85
    iput p2, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 86
    iput-boolean p3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/StreamSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 214
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 221
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 222
    return-void

    :cond_1
    move v3, v5

    .line 216
    goto :goto_0

    :cond_2
    move v4, v5

    .line 218
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 122
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 187
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 191
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v3, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 198
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v5

    .line 192
    goto :goto_0

    :cond_1
    move v4, v5

    .line 194
    goto :goto_1
.end method
