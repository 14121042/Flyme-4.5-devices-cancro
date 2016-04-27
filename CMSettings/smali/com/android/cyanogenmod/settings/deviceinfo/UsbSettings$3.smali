.class Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    return-void
.end method
