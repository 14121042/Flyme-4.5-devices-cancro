.class public Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:I

.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1584
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    .line 1547
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1550
    iput p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    .line 1551
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->total:J

    .line 1557
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1561
    return-void
.end method

.method public compareTo(Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;)I
    .locals 6
    .param p1, "another"    # Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    .prologue
    .line 1577
    iget v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->category:I

    iget v2, p1, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->category:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1578
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 1579
    iget-wide v2, p1, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1581
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1533
    check-cast p1, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->compareTo(Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1565
    iget v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1567
    iget-wide v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1568
    return-void
.end method
