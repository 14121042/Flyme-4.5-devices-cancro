.class Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 778
    packed-switch p2, :pswitch_data_0

    .line 791
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 792
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 793
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->access$100(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 794
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 795
    return-void

    .line 780
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 783
    :pswitch_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 787
    :pswitch_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
