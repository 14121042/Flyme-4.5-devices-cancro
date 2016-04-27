.class Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->addAppGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    # getter for: Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->access$100(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;)Lcyanogenmod/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcyanogenmod/app/ProfileManager;->notificationGroupExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v1, Landroid/app/NotificationGroup;

    invoke-direct {v1, v0}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "newGroup":Landroid/app/NotificationGroup;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    # getter for: Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->access$100(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;)Lcyanogenmod/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcyanogenmod/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 133
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->refreshList()V

    .line 138
    .end local v1    # "newGroup":Landroid/app/NotificationGroup;
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;->this$0:Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0901eb

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
