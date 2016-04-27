.class public Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$1;,
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "um"    # Landroid/os/UserManager;
    .param p4, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const v3, 0x7f020085

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sput-object p2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 134
    iput-object p4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 135
    sget-object v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez v1, :cond_0

    .line 188
    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 193
    :cond_2
    return-void

    .line 137
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 138
    const v1, 0x7f0200bb

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 142
    const v1, 0x7f0200a3

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 146
    const v1, 0x7f0200c6

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a00

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 150
    const v1, 0x7f0200c8

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 153
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 154
    const v1, 0x7f0200a0

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 158
    const v1, 0x7f020084

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 161
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 162
    const v1, 0x7f020083

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 165
    :pswitch_7
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    :pswitch_8
    iget v1, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 169
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_3

    .line 170
    invoke-static {p1, p3, v0}, Lcom/android/cyanogenmod/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-static {p1, v0}, Lcom/android/cyanogenmod/settings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 180
    iput v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 183
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 184
    iput v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static clearUidCache()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 89
    sget-object v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 94
    :cond_0
    new-instance v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 95
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 96
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 97
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 99
    :cond_1
    monitor-exit v1

    .line 101
    :cond_2
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopRequestQueue()V
    .locals 2

    .prologue
    .line 104
    sget-object v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 110
    :cond_0
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 7
    .param p1, "uidObj"    # Landroid/os/BatteryStats$Uid;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    .line 208
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "uidString":Ljava/lang/String;
    sget-object v5, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    sget-object v5, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;

    .line 211
    .local v4, "utd":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;
    iget-object v5, v4, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 212
    iget-object v5, v4, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 213
    iget-object v5, v4, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 237
    .end local v4    # "utd":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 217
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "packages":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 219
    if-nez v0, :cond_4

    .line 221
    if-nez v2, :cond_3

    .line 222
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a38

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 226
    :cond_2
    :goto_1
    const v5, 0x7f020085

    iput v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 227
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 223
    :cond_3
    const-string v5, "mediaserver"

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a39

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_4
    sget-object v5, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 233
    sget-object v6, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 234
    :try_start_0
    sget-object v5, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public loadNameAndIcon()V
    .locals 27

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 248
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    .line 249
    .local v19, "uid":I
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 250
    .local v6, "defaultActivityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 252
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    const/16 v23, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 258
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_3

    .line 259
    const-string v23, "android"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v14, v23, v24

    .line 261
    .local v14, "otherPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    aput-object v25, v23, v24

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v14, v23, v8

    .line 268
    .end local v8    # "i":I
    .end local v14    # "otherPackage":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .line 269
    .local v15, "packageLabels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 273
    .local v10, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 274
    .local v21, "userId":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    array-length v0, v15

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_8

    .line 276
    :try_start_0
    aget-object v23, v15, v8

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-interface {v10, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 278
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_6

    .line 279
    const-string v23, "PowerUsageSummary"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Retrieving null app info for package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v15, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 258
    .end local v10    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v15    # "packageLabels":[Ljava/lang/String;
    .end local v21    # "userId":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 283
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "packageLabels":[Ljava/lang/String;
    .restart local v21    # "userId":I
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 284
    .local v11, "label":Ljava/lang/CharSequence;
    if-eqz v11, :cond_7

    .line 285
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v15, v8

    .line 287
    :cond_7
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 289
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "label":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 298
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 301
    :cond_9
    array-length v0, v15

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 302
    const/16 v23, 0x0

    aget-object v23, v15, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 331
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 332
    .local v20, "uidString":Ljava/lang/String;
    new-instance v22, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct/range {v22 .. v22}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 333
    .local v22, "utd":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 336
    sget-object v23, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v23, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v23, :cond_0

    .line 338
    sget-object v23, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v24, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 292
    .end local v20    # "uidString":Ljava/lang/String;
    .end local v22    # "utd":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry$UidToDetail;
    :catch_0
    move-exception v7

    .line 293
    .local v7, "e":Landroid/os/RemoteException;
    const-string v23, "PowerUsageSummary"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error while retrieving app info for package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v15, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 305
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v12, :cond_a

    aget-object v17, v5, v9

    .line 307
    .local v17, "pkgName":Ljava/lang/String;
    const/16 v23, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-interface {v10, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 308
    .local v16, "pi":Landroid/content/pm/PackageInfo;
    if-nez v16, :cond_d

    .line 309
    const-string v23, "PowerUsageSummary"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Retrieving null package info for package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_c
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 313
    .restart local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_d
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 314
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 316
    .local v13, "nm":Ljava/lang/CharSequence;
    if-eqz v13, :cond_c

    .line 317
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 318
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 319
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 320
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 325
    .end local v13    # "nm":Ljava/lang/CharSequence;
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v7

    .line 326
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v23, "PowerUsageSummary"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error while retrieving package info for package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method
