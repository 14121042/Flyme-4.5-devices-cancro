.class public Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreComponentProtectedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mDialogHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialogHandler:Landroid/os/Handler;

    .line 273
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    .line 274
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    .line 275
    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    check-cast p1, [Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->doInBackground([Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;
    .locals 7
    .param p1, "args"    # [Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;

    .prologue
    .line 304
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 305
    .local v0, "appList":Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;->componentNames:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;->state:Z

    invoke-static {v4, v5, v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "appList":Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppProtectList;
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    # invokes: Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->access$400(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)V

    .line 310
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialogHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->access$000(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;)Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialogHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus$1;-><init>(Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method
