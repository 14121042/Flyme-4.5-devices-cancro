.class public Lcom/android/cyanogenmod/settings/DateTimeSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoTimePref:Landroid/preference/SwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 389
    new-instance v0, Lcom/android/cyanogenmod/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings$1;-><init>(Lcom/android/cyanogenmod/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 241
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 242
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 243
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 244
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 245
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 246
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 247
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 10
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 362
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 365
    .local v5, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 367
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 371
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 372
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 373
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 376
    if-nez p1, :cond_2

    .line 386
    .end local v2    # "gmtString":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 372
    .end local v3    # "isRtl":Z
    .restart local v2    # "gmtString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 373
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 381
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 382
    .local v6, "zoneNameFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 383
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "zoneNameString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 92
    const-string v5, "auto_time"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 93
    .local v0, "autoTimeEnabled":Z
    const-string v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 95
    .local v1, "autoTimeZoneEnabled":Z
    const-string v5, "auto_time"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    .line 97
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 99
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 108
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "firstRun"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 110
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 112
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    const-string v5, "auto_zone"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    .line 116
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    const/4 v1, 0x0

    .line 120
    :cond_2
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    const-string v5, "time"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 123
    const-string v5, "24 hour"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 124
    const-string v5, "timezone"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 125
    const-string v5, "date"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 126
    if-eqz v4, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 131
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 132
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    return-void

    :cond_4
    move v5, v7

    .line 130
    goto :goto_0

    :cond_5
    move v5, v7

    .line 131
    goto :goto_1

    :cond_6
    move v6, v7

    .line 132
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    return-void

    .line 311
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 327
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 328
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 329
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 330
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 332
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 333
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateLocaleStrings()V

    .line 336
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 352
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 353
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 354
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 356
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 357
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 359
    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method static updateLocaleStrings()V
    .locals 3

    .prologue
    .line 342
    invoke-static {}, Llibcore/icu/TimeZoneNames;->clearLocaleCache()V

    .line 343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 344
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->setZoneStrings([[Ljava/lang/String;)V

    .line 345
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->initUI()V

    .line 89
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 216
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 218
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 224
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 227
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    move-object v0, v1

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 179
    invoke-static {v0, p2, p3, p4}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 157
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 160
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->showDialog(I)V

    .line 289
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 281
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->removeDialog(I)V

    .line 282
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 285
    .local v0, "is24Hour":Z
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->set24Hour(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 211
    .end local v0    # "autoEnabled":Z
    :cond_0
    :goto_3
    return-void

    .restart local v0    # "autoEnabled":Z
    :cond_1
    move v2, v4

    .line 201
    goto :goto_0

    :cond_2
    move v2, v4

    .line 203
    goto :goto_1

    :cond_3
    move v3, v4

    .line 204
    goto :goto_2

    .line 205
    .end local v0    # "autoEnabled":Z
    :cond_4
    const-string v2, "auto_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 207
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v1, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 207
    goto :goto_4

    :cond_6
    move v3, v4

    .line 209
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 188
    invoke-static {v0, p2, p3}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 195
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 164
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 167
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 168
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 169
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method
