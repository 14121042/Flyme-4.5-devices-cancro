.class Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 483
    .local v0, "info":Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->access$100(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 485
    return-void
.end method
