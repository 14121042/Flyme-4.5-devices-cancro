.class Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;
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
    .line 189
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    .local v0, "sensitive":Z
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;->access$200(Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings;)Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/cyanogenmod/settings/notification/AppNotificationSettings$4;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/cyanogenmod/settings/notification/NotificationAppList$Backend;->setSensitive(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method
