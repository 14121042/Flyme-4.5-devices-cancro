.class public Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;
.super Ljava/lang/Object;
.source "FingerprintStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendEvent(Landroid/content/Context;Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/cmstats/StatsUtils;->isStatsPackageInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/cyanogenmod/settings/cmstats/StatsUtils;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.cyngn.stats.action.SEND_ANALYITC_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "tracking_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "category"

    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->category:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$000(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "action"

    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$100(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$200(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "label"

    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$200(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_2
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->value:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$300(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 84
    const-string v1, "value"

    # getter for: Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->value:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;->access$300(Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_3
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "com.cyngn.stats.SEND_ANALYTICS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendFingerprintEnrollmentFailedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    const-string v1, "enrollment_failed"

    const-string v2, "failure_reason"

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendEvent(Landroid/content/Context;Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)V

    .line 52
    return-void
.end method

.method public static sendFingerprintEnrollmentSuccessEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;

    const-string v1, "enrollment_success"

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats;->sendEvent(Landroid/content/Context;Lcom/android/cyanogenmod/settings/cmstats/FingerprintStats$Event;)V

    .line 57
    return-void
.end method
