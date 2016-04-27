.class Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 207
    .local v1, "showOnKeyguard":Z
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->access$200(Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;)Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "keyguard":I
    if-eqz v1, :cond_0

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->access$200(Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;)Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$5;->val$uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;->setShowNotificationForPackageOnKeyguard(Ljava/lang/String;II)Z

    move-result v2

    return v2

    .line 212
    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
