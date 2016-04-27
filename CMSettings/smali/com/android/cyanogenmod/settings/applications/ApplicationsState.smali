.class public Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALL_ENABLED_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 163
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 178
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 189
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 211
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

    .line 227
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

    .line 240
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

    .line 253
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppFilter;

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v2, 0x1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 282
    iput-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mCurId:J

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 410
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    .line 427
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 428
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 429
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 431
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 432
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    .line 435
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const v0, 0xa200

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mRetrieveFlags:I

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    return-void

    .line 440
    :cond_0
    const v0, 0x8200

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 461
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .param p1, "x1"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .param p1, "x1"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 418
    sget-object v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    sget-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sInstance:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sInstance:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    .line 422
    :cond_0
    sget-object v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->sInstance:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 866
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 855
    if-eqz p1, :cond_0

    .line 858
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 862
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 848
    if-eqz p1, :cond_0

    .line 849
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 851
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 759
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :try_start_1
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 767
    monitor-exit v2

    .line 793
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 772
    monitor-exit v2

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 791
    :catch_0
    move-exception v1

    goto :goto_0

    .line 774
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 775
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    .line 776
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 778
    monitor-exit v2

    goto :goto_0

    .line 780
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 782
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 786
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 787
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 790
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 682
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mResumed:Z

    .line 691
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 693
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 629
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mResumed:Z

    .line 633
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    .line 634
    new-instance v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Lcom/android/cyanogenmod/settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 635
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 637
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 638
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    .line 639
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 642
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 645
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 646
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 653
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 654
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 655
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 658
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_8

    .line 659
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 660
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 661
    add-int/lit8 v1, v1, -0x1

    .line 654
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 648
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 649
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 664
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_7
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 666
    :cond_8
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 667
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_5

    .line 668
    iput-object v2, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 671
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_9
    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 672
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .prologue
    .line 716
    iget-object v0, p1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 722
    :goto_0
    return-void

    .line 719
    :cond_0
    monitor-enter p1

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 721
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 700
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 701
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 702
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 704
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 711
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v4

    return-object v0

    .line 702
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 834
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 836
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 837
    .restart local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_0
    :goto_0
    return-object v0

    .line 839
    :cond_1
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 840
    iput-object p1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 750
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 749
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 754
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public newSession(Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;

    .prologue
    .line 621
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;-><init>(Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Callbacks;)V

    .line 622
    .local v0, "s":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    monitor-exit v2

    .line 625
    return-object v0

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 347
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 349
    monitor-exit v3

    .line 359
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;

    .line 354
    .local v1, "s":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v1    # "s":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 796
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 798
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v2

    .line 800
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 801
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 803
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 804
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 808
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 809
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 810
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 812
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 813
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 818
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 819
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 823
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 824
    return-void

    .line 811
    .restart local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    .line 728
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 732
    :cond_0
    monitor-exit v2

    .line 733
    return-void

    .line 732
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 8

    .prologue
    .line 736
    const-wide/16 v2, 0x0

    .line 738
    .local v2, "sum":J
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v1, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    add-long/2addr v2, v6

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 744
    :cond_0
    monitor-exit v4

    .line 745
    return-wide v2

    .line 744
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
