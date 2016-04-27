.class public Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
.implements Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHighTouchSensitivity:Landroid/preference/SwitchPreference;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowsOnlyFullImeAndKeyboardList:Z

.field private mStylusGestures:Landroid/preference/PreferenceScreen;

.field private mStylusIconEnabled:Landroid/preference/SwitchPreference;

.field private mTouchscreenHovering:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    .line 804
    new-instance v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 755
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 475
    .local v0, "currentLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 477
    .local v2, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 483
    .end local v2    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 745
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 746
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 747
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 748
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const/4 v3, 0x1

    .line 752
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 746
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 614
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 615
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x800

    const/16 v5, 0x10

    .line 781
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 782
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 783
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-virtual {v1, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    const-string v3, "high_touch_sensitivity"

    invoke-virtual {v1, v5}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 786
    .local v0, "enabled":Z
    invoke-virtual {v1, v5, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Failed to restore high touch sensitivity settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    const-string v3, "touchscreen_hovering"

    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 796
    .restart local v0    # "enabled":Z
    invoke-virtual {v1, v6, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 797
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Failed to restore touch hovering settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v0    # "enabled":Z
    :cond_1
    :goto_1
    return-void

    .line 790
    .restart local v0    # "enabled":Z
    :cond_2
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "High touch sensitivity settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    :cond_3
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Touch hovering settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 602
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 604
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 585
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 586
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 589
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 594
    .local v3, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "imiId":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 597
    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 622
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 623
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 703
    new-instance v0, Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 705
    .local v0, "fragment":Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 706
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 630
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 632
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 633
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 635
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 638
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 732
    invoke-static {}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 735
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 737
    .local v0, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 742
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :goto_1
    return-void

    .line 737
    .restart local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 740
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 649
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 650
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 651
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 652
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 653
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 656
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 657
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 662
    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 663
    .local v8, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 664
    if-eqz v6, :cond_2

    .line 665
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 669
    :goto_2
    new-instance v10, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 676
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 659
    goto :goto_1

    .line 667
    .restart local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0908fd

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 680
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 681
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_5

    .line 682
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 683
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 684
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 686
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 688
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 689
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 690
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 691
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 692
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 693
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 696
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 700
    .end local v0    # "count":I
    :goto_5
    return-void

    .line 698
    :cond_7
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 645
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 646
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 515
    iget-object v13, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;

    .line 518
    .local v0, "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 549
    .end local v0    # "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 520
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 521
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    .line 522
    .local v11, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 523
    .local v1, "context":Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v10

    .line 526
    .local v10, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-nez v10, :cond_3

    move v6, v12

    .line 527
    .local v6, "N":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_5

    .line 528
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 529
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 531
    .local v4, "isAllowedByOrganization":Z
    :goto_4
    new-instance v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 534
    .restart local v0    # "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 523
    .end local v0    # "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v10

    goto :goto_1

    .line 526
    .restart local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_2

    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move v4, v12

    .line 529
    goto :goto_4

    .line 536
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 537
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v5, p0, v7}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 543
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    .line 544
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;

    .line 545
    .restart local v0    # "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 546
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 547
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 543
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 549
    .end local v0    # "pref":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 555
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {p0, v3, v5, v12}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 558
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 298
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 299
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 304
    :cond_1
    new-instance v2, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 721
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 723
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 726
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 727
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 729
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v10, 0x7f060027

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 145
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v10

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 147
    invoke-static {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 150
    const v10, 0x7f0903e3

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "phone_language"

    invoke-virtual {p0, v11}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :goto_1
    new-instance v10, Lcom/android/cyanogenmod/settings/VoiceInputOutputSettings;

    invoke-direct {v10, p0}, Lcom/android/cyanogenmod/settings/VoiceInputOutputSettings;-><init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v10}, Lcom/android/cyanogenmod/settings/VoiceInputOutputSettings;->onCreate()V

    .line 172
    const-string v10, "hard_keyboard"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 173
    const-string v10, "keyboard_settings_category"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 175
    const-string v10, "game_controller_settings_category"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 180
    .local v7, "startingIntent":Landroid/content/Intent;
    const-string v10, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 182
    iget-boolean v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v10, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 184
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 189
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_0
    const-string v10, "input"

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/input/InputManager;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 194
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 196
    const-string v10, "pointer_settings_category"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 199
    .local v3, "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    const-string v10, "stylus_gestures"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    .line 200
    const-string v10, "stylus_icon_enabled"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    .line 201
    const-string v10, "high_touch_sensitivity"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 203
    const-string v10, "touchscreen_hovering"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    .line 205
    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 207
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_1
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 213
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 220
    :goto_2
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v11, 0x800

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 221
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    .line 228
    :goto_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "gesture_pad_settings"

    invoke-static {v10, v3, v11}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 230
    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200ba

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 238
    .local v5, "showCmImeSwitcher":Z
    if-nez v5, :cond_3

    .line 239
    const-string v10, "status_bar_ime_switcher"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 240
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_3
    const-string v10, "spellcheckers_settings"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 247
    .local v6, "spellChecker":Landroid/preference/Preference;
    if-eqz v6, :cond_4

    .line 249
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    const-class v10, Lcom/android/cyanogenmod/settings/SubSettings;

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    const-string v10, ":settings:show_fragment"

    const-class v11, Lcom/android/cyanogenmod/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v10, ":settings:show_fragment_title_resid"

    const v11, 0x7f090c03

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 259
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v10, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 261
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 266
    const-string v10, "input_device_identifier"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 268
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v10, :cond_5

    if-eqz v1, :cond_5

    .line 269
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.cyanogenmod.voicewakeup"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/cyanogenmod/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    .line 273
    const-string v10, "voice_category"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 275
    .local v8, "voiceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v8, :cond_6

    .line 276
    const-string v10, "voice_wakeup"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 277
    .local v9, "wakeup":Landroid/preference/Preference;
    if-eqz v9, :cond_6

    .line 278
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    .end local v8    # "voiceCategory":Landroid/preference/PreferenceCategory;
    .end local v9    # "wakeup":Landroid/preference/Preference;
    :cond_6
    return-void

    .line 159
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "showCmImeSwitcher":Z
    .end local v6    # "spellChecker":Landroid/preference/Preference;
    .end local v7    # "startingIntent":Landroid/content/Intent;
    :cond_7
    const-string v10, "phone_language"

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 216
    .restart local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .restart local v7    # "startingIntent":Landroid/content/Intent;
    :cond_8
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 224
    :cond_9
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 152
    .end local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .end local v7    # "startingIntent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 412
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 417
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 422
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 395
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 397
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 404
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 407
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 427
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 468
    :goto_0
    return v4

    .line 430
    :cond_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    if-ne p2, v6, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "stylus_icon_enabled"

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    .line 431
    goto :goto_1

    .line 433
    :cond_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    if-ne p2, v6, :cond_5

    .line 434
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 435
    .local v2, "mHighTouchSensitivityEnable":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_touch_sensitivity_enable"

    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v6, v7, v4}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v2}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 435
    goto :goto_3

    .line 440
    .end local v2    # "mHighTouchSensitivityEnable":Z
    :cond_5
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    if-ne p2, v6, :cond_6

    .line 441
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v5, 0x800

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    move-result v4

    goto :goto_0

    .line 443
    :cond_6
    instance-of v6, p2, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_7

    .line 444
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 446
    const-string v4, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 449
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_2

    .line 451
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    instance-of v6, p2, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    move-object v3, p2

    .line 452
    check-cast v3, Landroid/preference/SwitchPreference;

    .line 453
    .local v3, "pref":Landroid/preference/SwitchPreference;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v7, "vibrate_input_devices"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v3, v6, :cond_9

    .line 454
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_input_devices"

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v4

    :cond_8
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 458
    :cond_9
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v6, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 460
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v7, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v3, v6, :cond_b

    .line 461
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    move v5, v4

    :cond_a
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 459
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 338
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 340
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 341
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v9, 0x0

    invoke-virtual {v6, p0, v9}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 343
    const-string v6, "spellcheckers_settings"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 344
    .local v3, "spellChecker":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 345
    const-string v6, "textservices"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/TextServicesManager;

    .line 347
    .local v5, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 348
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 350
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    .end local v2    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 359
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "stylus_icon_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 363
    :cond_1
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v6, :cond_3

    .line 364
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "localeName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    .end local v1    # "localeName":Ljava/lang/String;
    :cond_2
    const-string v6, "key_user_dictionary_settings"

    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 376
    :cond_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v6, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 378
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v9, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 380
    .local v4, "swPref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 354
    .end local v0    # "i":I
    .end local v4    # "swPref":Landroid/preference/SwitchPreference;
    .restart local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_4
    const v6, 0x7f090d44

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .end local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_5
    move v6, v8

    .line 359
    goto :goto_1

    .restart local v0    # "i":I
    .restart local v4    # "swPref":Landroid/preference/SwitchPreference;
    :cond_6
    move v6, v8

    .line 380
    goto :goto_3

    .line 385
    .end local v0    # "i":I
    .end local v4    # "swPref":Landroid/preference/SwitchPreference;
    :cond_7
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 389
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 390
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 391
    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 563
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 570
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v4, v5, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 573
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 574
    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 579
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;

    .line 580
    .local v3, "p":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 568
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodPreference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    .restart local v0    # "hasHardwareKeyboard":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/cyanogenmod/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 713
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 715
    iput-object v0, p0, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 716
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 717
    return-void
.end method
