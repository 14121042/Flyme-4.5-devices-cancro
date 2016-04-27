.class Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

.field final synthetic val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/BrightnessSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iput-object p4, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 933
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 934
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v0}, Lcyanogenmod/profiles/BrightnessSettings;->setValue(I)V

    .line 935
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/profiles/BrightnessSettings;->setOverride(Z)V

    .line 936
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V

    .line 937
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 938
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$15;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->access$100(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 939
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 940
    return-void
.end method
