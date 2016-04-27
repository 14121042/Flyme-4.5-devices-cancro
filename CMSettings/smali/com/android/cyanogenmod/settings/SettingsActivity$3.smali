.class Lcom/android/cyanogenmod/settings/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$3;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$3;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$3;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 634
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsActivity$3;->this$0:Lcom/android/cyanogenmod/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsActivity;->finish()V

    .line 635
    return-void
.end method
