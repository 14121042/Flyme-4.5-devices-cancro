.class public Lcyanogenmod/app/Profile$ProfileTrigger;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileTrigger"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcyanogenmod/app/Profile$ProfileTrigger$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$ProfileTrigger$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    .line 207
    iput-object p2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 208
    iput p3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    .line 209
    iput-object p4, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 222
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 229
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/Profile$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Lcyanogenmod/app/Profile$ProfileTrigger;)I
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/app/Profile$ProfileTrigger;

    .prologue
    .line 178
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcyanogenmod/app/Profile$ProfileTrigger;I)I
    .locals 0
    .param p0, "x0"    # Lcyanogenmod/app/Profile$ProfileTrigger;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcyanogenmod/app/Profile$ProfileTrigger;

    .prologue
    .line 178
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 236
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 241
    .local v1, "sizePosition":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 244
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 251
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 254
    return-void
.end method
