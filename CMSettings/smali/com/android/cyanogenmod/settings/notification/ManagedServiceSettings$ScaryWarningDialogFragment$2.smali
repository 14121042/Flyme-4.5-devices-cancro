.class Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$0:Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$args:Landroid/os/Bundle;

    const-string v2, "c"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 119
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$0:Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;

    # invokes: Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;->addService(Landroid/content/ComponentName;)V
    invoke-static {v1, v0}, Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;->access$100(Lcom/android/cyanogenmod/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;)V

    .line 120
    return-void
.end method
