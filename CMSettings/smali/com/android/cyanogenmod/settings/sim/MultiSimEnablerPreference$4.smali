.class Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference$4;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->access$602(Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 441
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/sim/MultiSimEnablerPreference;->update()V

    .line 442
    return-void
.end method
