.class final Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;
.super Ljava/lang/Object;
.source "FingerprintStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->action:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->category:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->label:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->value:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->value:Ljava/lang/String;

    return-object v0
.end method
