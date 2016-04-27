.class public Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/DialogCreatable;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroid/preference/SwitchPreference;

.field private mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 545
    new-instance v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 160
    new-instance v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 294
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f090979

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09097a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 298
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 302
    return-void

    :cond_0
    move v1, v2

    .line 298
    goto :goto_0
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method private handleToggleEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f09097b

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "summary"

    const v4, 0x7f09097e

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 290
    return-void

    :cond_0
    move v1, v2

    .line 286
    goto :goto_0
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 262
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_1
    return-void

    .line 261
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 9

    .prologue
    .line 305
    const-string v6, "services_category"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 306
    const-string v6, "system_category"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 309
    const-string v6, "toggle_large_text_preference"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    .line 313
    const-string v6, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    .line 317
    const-string v6, "toggle_inversion_preference"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    .line 318
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    .line 325
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 327
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 328
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "timeoutValues":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 332
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 335
    .local v4, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 336
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v1

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_0
    const-string v6, "captioning_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 345
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 349
    const-string v6, "daltonizer_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 353
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 355
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 357
    .local v2, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 358
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 362
    :cond_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_2
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 525
    sget-object v4, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 526
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 531
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 543
    :cond_0
    return-void

    .line 535
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 536
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 537
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 538
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 368
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 369
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 520
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f090994

    :goto_1
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 522
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 519
    goto :goto_0

    .line 520
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x7f090995

    goto :goto_1
.end method

.method private updateServicesPreferences()V
    .locals 26

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 381
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .line 383
    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 385
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v14

    .line 387
    .local v14, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "accessibility_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    .line 390
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v10, v6, :cond_a

    .line 391
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 393
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 395
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 397
    .local v22, "title":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 398
    .local v19, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    if-eqz v3, :cond_5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v17, 0x1

    .line 407
    .local v17, "serviceEnabled":Z
    :goto_2
    if-eqz v17, :cond_6

    .line 408
    const v23, 0x7f090994

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 414
    .local v18, "serviceEnabledString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 415
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_0
    const/16 v16, 0x1

    .line 417
    .local v16, "serviceAllowed":Z
    :goto_4
    if-nez v16, :cond_1

    if-eqz v17, :cond_8

    :cond_1
    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 420
    if-eqz v16, :cond_9

    .line 421
    move-object/from16 v21, v18

    .line 425
    .local v21, "summaryString":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 428
    const-class v23, Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 429
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 431
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 432
    .local v9, "extras":Landroid/os/Bundle;
    const-string v23, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "description":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 438
    const v23, 0x7f0909c2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 440
    :cond_2
    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v20

    .line 443
    .local v20, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 444
    const-string v23, "settings_title"

    const v24, 0x7f090993

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_3
    const-string v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 387
    .end local v3    # "accessibilityEnabled":Z
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "count":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v20    # "settingsClassName":Ljava/lang/String;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 404
    .restart local v3    # "accessibilityEnabled":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v15    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "title":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 410
    .restart local v17    # "serviceEnabled":Z
    :cond_6
    const v23, 0x7f090995

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "serviceEnabledString":Ljava/lang/String;
    goto/16 :goto_3

    .line 415
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 417
    .restart local v16    # "serviceAllowed":Z
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 423
    :cond_9
    const v23, 0x7f090996

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "summaryString":Ljava/lang/String;
    goto/16 :goto_6

    .line 456
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "serviceAllowed":Z
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "serviceEnabledString":Ljava/lang/String;
    .end local v19    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "summaryString":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_c

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 458
    new-instance v23, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0400fa

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0909c1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_c
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 473
    :try_start_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v8, 0x3fa66666    # 1.3f

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 479
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "high_text_contrast_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 484
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "accessibility_display_inversion_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "speak_password"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v2, v5

    .line 490
    .local v2, "speakPasswordEnabled":Z
    :goto_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 493
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "long_press_timeout"

    iget v8, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 495
    .local v1, "longPressTimeout":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 497
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    const-string v4, "accessibility_captioning_enabled"

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v7}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 501
    const-string v4, "accessibility_display_magnification_enabled"

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v7}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 503
    const-string v4, "accessibility_display_daltonizer_enabled"

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v7}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v0, v5

    .line 509
    .local v0, "globalGestureEnabled":Z
    :goto_5
    if-eqz v0, :cond_5

    .line 510
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v5, 0x7f09097c

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 516
    :goto_6
    return-void

    .end local v0    # "globalGestureEnabled":Z
    .end local v1    # "longPressTimeout":I
    .end local v2    # "speakPasswordEnabled":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 477
    goto/16 :goto_1

    :cond_1
    move v4, v6

    .line 479
    goto :goto_2

    :cond_2
    move v4, v6

    .line 484
    goto :goto_3

    :cond_3
    move v2, v6

    .line 488
    goto :goto_4

    .restart local v1    # "longPressTimeout":I
    .restart local v2    # "speakPasswordEnabled":Z
    .restart local v3    # "value":Ljava/lang/String;
    :cond_4
    move v0, v6

    .line 507
    goto :goto_5

    .line 513
    .restart local v0    # "globalGestureEnabled":Z
    :cond_5
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v5, 0x7f09097d

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    .line 474
    .end local v0    # "globalGestureEnabled":Z
    .end local v1    # "longPressTimeout":I
    .end local v2    # "speakPasswordEnabled":Z
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 192
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 193
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 210
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 211
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 212
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 217
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 223
    :goto_0
    return v0

    .line 219
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p1, :cond_1

    .line 220
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    goto :goto_0

    .line 223
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 240
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 256
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/SwitchPreference;

    if-ne v1, p2, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleToggleEnableAccessibilityGesturePreferenceClick()V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    .line 256
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 201
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 203
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 204
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 205
    return-void
.end method
