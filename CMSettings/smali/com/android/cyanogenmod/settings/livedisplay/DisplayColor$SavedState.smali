.class Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor;
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
            "Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentColors:[F

.field originalColors:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 213
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 224
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 226
    return-void
.end method
