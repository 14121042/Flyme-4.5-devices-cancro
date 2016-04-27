.class Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus$1;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus$1;->this$1:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus$1;->this$1:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->access$300(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 287
    return-void
.end method
