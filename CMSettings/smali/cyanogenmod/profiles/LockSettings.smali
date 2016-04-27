.class public final Lcyanogenmod/profiles/LockSettings;
.super Ljava/lang/Object;
.source "LockSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/LockSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirty:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/profiles/LockSettings;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcyanogenmod/profiles/LockSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/LockSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 182
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    .line 187
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 188
    return-void

    .line 184
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 157
    .local v1, "sizePosition":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 161
    .local v2, "startPosition":I
    iget v4, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v4, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 166
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 169
    return-void
.end method
