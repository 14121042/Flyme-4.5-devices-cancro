.class Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

.field final synthetic val$intVals:[I


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;[I)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->val$intVals:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;->access$200(Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/PowerUsageSummary$2;->val$intVals:[I

    aget v2, v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return-void
.end method
