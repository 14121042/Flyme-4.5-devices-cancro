.class final Lcom/android/cyanogenmod/settings/notification/NotificationAppList$1;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;
    .param p2, "rhs"    # Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 367
    check-cast p1, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;

    check-cast p2, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$1;->compare(Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;Lcom/android/cyanogenmod/settings/notification/NotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
