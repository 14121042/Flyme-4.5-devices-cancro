.class public Lcom/android/cyanogenmod/settings/DeviceInfoSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mAdvancedSettings:Lcom/android/cyanogenmod/settings/cyanogenmod/CMSecureSettingSwitchPreference;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 424
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 432
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 433
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v2, "Unavailable"

    .line 441
    :goto_0
    return-object v2

    .line 436
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 437
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v2, "Unavailable"

    goto :goto_0

    .line 441
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090d41

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 499
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 476
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 479
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 481
    .local v6, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 482
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 483
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 485
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 486
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 488
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 499
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 493
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 410
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 399
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 401
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .prologue
    .line 353
    if-nez p2, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 355
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 583
    move-object v6, p1

    check-cast v6, Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "intentUri":Ljava/lang/String;
    const-string v6, "component=([^/]+)/"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 585
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 587
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 592
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_1

    .line 593
    const-string v6, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is disabled, hiding preference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 603
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    return v6

    .line 587
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 597
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not installed, hiding preference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move v6, v7

    .line 600
    goto :goto_1

    .line 603
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v9, 0x7f06001b

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 118
    const-string v9, "firmware_version"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v9, "firmware_version"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 121
    .local v4, "patch":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 123
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v8, "template":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 125
    .local v5, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v12, "dMMMMyyyy"

    invoke-static {v9, v12}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 130
    .end local v1    # "format":Ljava/lang/String;
    .end local v5    # "patchDate":Ljava/util/Date;
    .end local v8    # "template":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v9, "security_patch"

    invoke-direct {p0, v9, v4}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    const-string v9, "baseband_version"

    const-string v12, "gsm.version.baseband"

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v9, "fcc_equipment_id"

    const-string v12, "ro.ril.fccid"

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v9, "device_model"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v9, "build_number"

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v9, "build_number"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 139
    const-string v9, "kernel_version"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-static {}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    const-string v9, "mod_version"

    const-string v12, "ro.cm.display.version"

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v9, "mod_version"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    const-string v9, "build_date"

    const-string v12, "ro.build.date"

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    .line 145
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f090c0a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "status":Ljava/lang/String;
    const-string v9, "selinux_status"

    invoke-direct {p0, v9, v7}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    :goto_2
    const-string v9, "device_name"

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v9, "device_name"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "selinux_status"

    const-string v13, "ro.build.selinux"

    invoke-direct {p0, v9, v12, v13}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_8

    .line 162
    const-string v9, "cm_updates"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 168
    :goto_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "safetylegal"

    const-string v13, "ro.url.safetylegal"

    invoke-direct {p0, v9, v12, v13}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "fcc_equipment_id"

    const-string v13, "ro.ril.fccid"

    invoke-direct {p0, v9, v12, v13}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-le v9, v10, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/cyanogenmod/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "baseband_version"

    invoke-virtual {p0, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "device_feedback"

    invoke-virtual {p0, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, "act":Landroid/app/Activity;
    const-string v9, "container"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 194
    .local v3, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v9, "terms"

    invoke-static {v0, v3, v9, v10}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 196
    const-string v9, "license"

    invoke-static {v0, v3, v9, v10}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 198
    const-string v9, "copyright"

    invoke-static {v0, v3, v9, v10}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 200
    const-string v9, "webview_license"

    invoke-static {v0, v3, v9, v10}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 204
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_9

    .line 206
    const-string v9, "system_update_settings"

    invoke-static {v0, v3, v9, v10}, Lcom/android/cyanogenmod/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 210
    const-string v9, "system_update_settings"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 211
    const-string v9, "system_update_settings"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 218
    :cond_4
    :goto_4
    const-string v9, "additional_system_update_settings"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-direct {p0, v9, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 222
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 224
    const-string v9, "regulatory_info"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 225
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_5

    .line 226
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_5
    const-string v9, "advanced_mode"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/cyanogenmod/settings/cyanogenmod/CMSecureSettingSwitchPreference;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mAdvancedSettings:Lcom/android/cyanogenmod/settings/cyanogenmod/CMSecureSettingSwitchPreference;

    .line 232
    const-string v12, "advanced_mode"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x11200c0

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v9, v10

    :goto_5
    invoke-direct {p0, v12, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 234
    return-void

    .line 132
    .end local v0    # "act":Landroid/app/Activity;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_6
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "security_patch"

    invoke-virtual {p0, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 147
    :cond_7
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v9

    if-nez v9, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f090c0b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7    # "status":Ljava/lang/String;
    const-string v9, "selinux_status"

    invoke-direct {p0, v9, v7}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    .end local v7    # "status":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "cm_updates"

    invoke-virtual {p0, v12}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 214
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_9
    const-string v9, "system_update_settings"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_a
    move v9, v11

    .line 232
    goto :goto_5

    .line 127
    .end local v0    # "act":Landroid/app/Activity;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firmware_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 250
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 251
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android"

    const-class v5, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_1
    return v4

    .line 257
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "build_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 268
    const/4 v4, 0x1

    goto :goto_1

    .line 271
    :cond_3
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 272
    .local v2, "um":Landroid/os/UserManager;
    const-string v4, "no_debugging_features"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    .line 274
    :cond_4
    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_8

    .line 275
    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 276
    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v4, :cond_6

    .line 277
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "development"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_5

    .line 281
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 283
    :cond_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090002

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 285
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 287
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/search/Index;

    move-result-object v4

    const-class v5, Lcom/android/cyanogenmod/settings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 291
    :cond_6
    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 293
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_7

    .line 294
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 296
    :cond_7
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0003

    iget v7, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 299
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 301
    :cond_8
    iget v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v4, :cond_0

    .line 302
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_9

    .line 303
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 305
    :cond_9
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090003

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 307
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_a
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_feedback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 310
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 311
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mod_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 312
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 313
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 314
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 315
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "is_cm"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const-string v4, "android"

    const-class v5, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cmlicense"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    const-string v4, "ro.cmlegal.url"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "userCMLicenseUrl":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 331
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 332
    :catch_2
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mAdvancedSettings:Lcom/android/cyanogenmod/settings/cyanogenmod/CMSecureSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/CMSecureSettingSwitchPreference;->setChecked(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 244
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
