.class Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->addProfile(Lcyanogenmod/app/Profile;)V

    .line 1056
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment$22;->this$0:Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/profiles/SetupActionsFragment;->finishFragment()V

    .line 1058
    return-void
.end method
