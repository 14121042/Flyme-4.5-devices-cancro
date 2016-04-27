.class public Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mCallPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mMenu:Landroid/view/Menu;

.field private mMultipleLedsEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

.field private mPackageAdapter:Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

.field private mVoicemailPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 293
    .local v0, "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .end local v0    # "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    iget v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 295
    .restart local v0    # "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 297
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 299
    :cond_0
    return-void
.end method

.method private parsePackageList()Z
    .locals 9

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "baseString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    const/4 v7, 0x0

    .line 332
    :goto_0
    return v7

    .line 316
    :cond_0
    iput-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 317
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 319
    if-eqz v2, :cond_3

    .line 320
    const-string v7, "\\|"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 322
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    :cond_2
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    move-result-object v6

    .line 326
    .local v6, "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v6, :cond_1

    .line 327
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v8, v6, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 332
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 10

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v7

    if-nez v7, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_0

    .line 255
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 257
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 259
    .local v3, "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 261
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v4, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iget-object v7, v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v4, v0, v7, v8, v9}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 264
    .local v4, "pref":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    iget-object v7, v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 267
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 268
    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "pref":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 277
    .end local v3    # "pkg":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 278
    .local v6, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v7, "applications_list"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 279
    .local v5, "prefGrp":Landroid/preference/PreferenceGroup;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 280
    if-eqz v5, :cond_0

    .line 281
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 284
    :cond_3
    if-nez v5, :cond_0

    .line 285
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 211
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v10, "notification_light_pulse_default_color"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, "color":I
    const-string v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 215
    .local v6, "timeOn":I
    const-string v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 218
    .local v5, "timeOff":I
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 221
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    .line 222
    const-string v10, "notification_light_pulse_call_color"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "callColor":I
    const-string v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, "callTimeOn":I
    const-string v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "callTimeOff":I
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 232
    .end local v0    # "callColor":I
    .end local v1    # "callTimeOff":I
    .end local v2    # "callTimeOn":I
    :cond_0
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    .line 233
    const-string v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 235
    .local v7, "vmailColor":I
    const-string v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 237
    .local v9, "vmailTimeOn":I
    const-string v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 240
    .local v8, "vmailTimeOff":I
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 243
    .end local v7    # "vmailColor":I
    .end local v8    # "vmailTimeOff":I
    .end local v9    # "vmailTimeOn":I
    :cond_1
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 244
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 306
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .param p1, "preferencesUpdated"    # Z

    .prologue
    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v2, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 338
    .local v0, "app":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v0    # "app":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "value":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 342
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    return-void
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "started"    # Z

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 194
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 195
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 196
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 197
    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 198
    .local v0, "ap":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->onStart()V

    .line 194
    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .restart local v0    # "ap":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    .restart local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    .line 203
    .end local v0    # "ap":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 204
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 207
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v4, 0x7f06002e

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 99
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v4, "advanced_section"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 104
    .local v0, "mAdvancedPrefs":Landroid/preference/PreferenceGroup;
    const v4, 0x106010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 107
    const v4, 0x10e0049

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 109
    const v4, 0x10e004a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 112
    const-string v4, "notification_light_pulse"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 114
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v4, "default"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 117
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v4, "notification_light_brightness_level"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    .line 122
    const-string v4, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 124
    const-string v4, "notification_light_screen_on_enable"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 126
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    const-string v4, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    .line 129
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const v4, 0x112003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :goto_0
    const v4, 0x1120044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 145
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-nez v4, :cond_3

    .line 146
    const-string v4, "phone_list"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    .line 155
    :goto_2
    const-string v4, "applications_list"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 156
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 161
    new-instance v4, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    .line 163
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 164
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 166
    const v4, 0x1120041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->resetColors()V

    .line 169
    :cond_0
    return-void

    .line 134
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 148
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v4, "missed_call"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 149
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string v4, "voicemail"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 152
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v4, p0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 467
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 489
    const/4 v1, 0x0

    .line 491
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 471
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 472
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/cyanogenmod/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    const v3, 0x7f09003e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 478
    .restart local v1    # "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 440
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 441
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090011

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 444
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 403
    .local v1, "pref":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 404
    const/4 v2, 0x0

    .line 420
    :goto_0
    return v2

    .line 407
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09012c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 419
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 420
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 459
    :goto_0
    return v0

    .line 456
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 457
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 435
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 430
    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;

    .line 431
    .local v0, "lightPref":Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 449
    .local v0, "enableAddButton":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    return-void

    .end local v0    # "enableAddButton":Z
    :cond_0
    move v0, v1

    .line 448
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 175
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 176
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 178
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStart()V

    .line 183
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 184
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStop()V

    .line 189
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 190
    return-void
.end method

.method protected resetColors()V
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "notification_light_pulse_default_color"

    iget v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    const-string v1, "notification_light_pulse_call_color"

    iget v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    const-string v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 398
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 359
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 371
    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;

    .line 381
    .local v0, "app":Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_0

    .line 382
    iput-object p2, v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 383
    iput-object p3, v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 384
    iput-object p4, v0, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 385
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    goto :goto_0
.end method
