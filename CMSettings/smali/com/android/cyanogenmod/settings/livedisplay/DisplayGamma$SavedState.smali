.class Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field controlCount:I

.field currentColors:[[I

.field originalColors:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    .line 279
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    new-array v1, v1, [[I

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    .line 280
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    new-array v1, v1, [[I

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    aput-object v2, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    aput-object v2, v1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 274
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 292
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    if-ge v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    :cond_1
    return-void
.end method
