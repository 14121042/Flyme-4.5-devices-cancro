.class final Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState$1;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 305
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    invoke-direct {v0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 309
    new-array v0, p1, [Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState$1;->newArray(I)[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$SavedState;

    move-result-object v0

    return-object v0
.end method
