.class Lcom/android/cyanogenmod/settings/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

.field final synthetic val$zenModeConditionSelection:Lcom/android/cyanogenmod/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;Lcom/android/cyanogenmod/settings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings$13;->val$zenModeConditionSelection:Lcom/android/cyanogenmod/settings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings$13;->val$zenModeConditionSelection:Lcom/android/cyanogenmod/settings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 560
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;->access$702(Lcom/android/cyanogenmod/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 561
    return-void
.end method
