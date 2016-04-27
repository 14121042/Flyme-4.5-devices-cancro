.class Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;JJ)V
    .locals 4
    .param p1, "meas"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;
    .param p2, "totalSize"    # J
    .param p4, "availSize"    # J

    .prologue
    const/4 v3, 0x1

    .line 545
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void
.end method

.method public updateDetails(Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .param p1, "meas"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;
    .param p2, "details"    # Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/cyanogenmod/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    return-void
.end method
