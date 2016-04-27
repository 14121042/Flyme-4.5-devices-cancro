.class Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

.field final synthetic val$connectionValues:[Ljava/lang/String;

.field final synthetic val$setting:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    iput-object p3, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$connectionValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 844
    packed-switch p2, :pswitch_data_0

    .line 849
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 850
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$connectionValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 853
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 854
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->access$100(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V

    .line 855
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 856
    return-void

    .line 846
    :pswitch_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
