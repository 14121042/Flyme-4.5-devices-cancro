.class Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

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
    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 262
    .local v0, "info":Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;

    # getter for: Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;->access$000(Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationGroup;->addPackage(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;->updatePackages()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;->access$100(Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;)V

    .line 264
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 265
    return-void
.end method
