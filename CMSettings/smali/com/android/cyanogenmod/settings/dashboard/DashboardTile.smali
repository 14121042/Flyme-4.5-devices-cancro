.class public Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;
.super Ljava/lang/Object;
.source "DashboardTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public switchControl:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->readFromParcel(Landroid/os/Parcel;)V

    .line 183
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summaryRes:I

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    if-eqz v0, :cond_0

    .line 116
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    .line 166
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summaryRes:I

    .line 168
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->iconRes:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    .line 179
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-wide v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 143
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 145
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    :goto_1
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
