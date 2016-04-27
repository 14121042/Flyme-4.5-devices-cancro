.class Lcom/android/cyanogenmod/settings/HomeSettings$3;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/HomeSettings;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/HomeSettings$3;->this$0:Lcom/android/cyanogenmod/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/HomeSettings$3;->this$0:Lcom/android/cyanogenmod/settings/HomeSettings;

    # getter for: Lcom/android/cyanogenmod/settings/HomeSettings;->mCurrentHome:Lcom/android/cyanogenmod/settings/HomeSettings$HomeAppPreference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/HomeSettings;->access$300(Lcom/android/cyanogenmod/settings/HomeSettings;)Lcom/android/cyanogenmod/settings/HomeSettings$HomeAppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 226
    return-void
.end method
