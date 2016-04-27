.class Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;
.super Landroid/os/AsyncTask;
.source "SetupActionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->fillProfileWithCurrentSettings(Landroid/content/Context;Lcyanogenmod/app/Profile;)V

    .line 397
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->access$100(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->rebuildItemList()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->access$200(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 405
    return-void
.end method
