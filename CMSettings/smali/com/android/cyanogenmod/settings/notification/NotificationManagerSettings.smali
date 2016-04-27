.class public Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "NotificationManagerSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$2;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$2;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 5

    .prologue
    const v4, 0x7f090cfd

    const v3, 0x7f090cfc

    const v2, 0x7f090cfb

    .line 56
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    .line 57
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->TAG:Ljava/lang/String;

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->updateLockscreenNotifications()V

    .line 71
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    new-instance v1, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings$1;-><init>(Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setCallback(Lcom/android/cyanogenmod/settings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 95
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 96
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090cfd

    :goto_2
    iput v2, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    .line 99
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/cyanogenmod/settings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f090cfb

    goto :goto_2

    :cond_4
    const v2, 0x7f090cfc

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->addPreferencesFromResource(I)V

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->mSecure:Z

    .line 50
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notification/NotificationManagerSettings;->initLockscreenNotifications()V

    .line 51
    return-void
.end method
