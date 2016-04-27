.class public Lcom/android/cyanogenmod/settings/ApnSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/ApnSettings$3;,
        Lcom/android/cyanogenmod/settings/ApnSettings$ApnInfo;,
        Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;,
        Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUseNvOperatorForEhrpd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    const-string v0, "persist.radio.use_nv_for_ehrpd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    .line 116
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/ApnSettings$1;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/ApnSettings$2;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mHandler:Landroid/os/Handler;

    .line 558
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ApnSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->handleResetOrFill()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/cyanogenmod/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ApnSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/cyanogenmod/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operator"

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method private createApnPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/cyanogenmod/settings/ApnPreference;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "readOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 358
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/cyanogenmod/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, "pref":Lcom/android/cyanogenmod/settings/ApnPreference;
    invoke-virtual {v0, p5}, Lcom/android/cyanogenmod/settings/ApnPreference;->setApnReadOnly(Z)V

    .line 361
    invoke-virtual {v0, p2}, Lcom/android/cyanogenmod/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/cyanogenmod/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, p3}, Lcom/android/cyanogenmod/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/ApnPreference;->setPersistent(Z)V

    .line 365
    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    if-eqz p4, :cond_0

    const-string v2, "mms"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/ApnPreference;->setSelectable(Z)V

    .line 368
    return-object v0
.end method

.method private fillList()V
    .locals 38

    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getOperatorNumericSelection()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "where":Ljava/lang/String;
    const/4 v5, 0x7

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string v6, "read_only"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "mvno_type"

    aput-object v6, v7, v5

    const/4 v5, 0x6

    const-string v6, "mvno_match_data"

    aput-object v6, v7, v5

    .line 273
    .local v7, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const-string v10, "name ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 276
    .local v24, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    .line 277
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v36

    .line 278
    .local v36, "simOperatorName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v27

    .line 279
    .local v27, "imsiSIM":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v25

    .line 281
    .local v25, "gid1":Ljava/lang/String;
    if-eqz v24, :cond_d

    .line 282
    const-string v5, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/cyanogenmod/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceGroup;

    .line 283
    .local v23, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 285
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v29, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v33, "mvnoSpnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v31, "mvnoGid1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v32, "mvnoImsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 292
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 293
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "name":Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, "apn":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "key":Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 297
    .local v13, "type":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v14, 0x1

    .line 298
    .local v14, "readOnly":Z
    :goto_1
    const/4 v5, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 299
    .local v21, "mvnoType":Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 300
    .local v30, "mvnoData":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v28, 0x1

    .local v28, "isMvno":Z
    :goto_2
    move-object/from16 v9, p0

    .line 302
    invoke-direct/range {v9 .. v14}, Lcom/android/cyanogenmod/settings/ApnSettings;->createApnPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/cyanogenmod/settings/ApnPreference;

    move-result-object v34

    .line 304
    .local v34, "pref":Lcom/android/cyanogenmod/settings/ApnPreference;
    invoke-virtual/range {v34 .. v34}, Lcom/android/cyanogenmod/settings/ApnPreference;->getSelectable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    invoke-virtual/range {v34 .. v34}, Lcom/android/cyanogenmod/settings/ApnPreference;->setChecked()V

    .line 307
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find select key = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    :goto_3
    if-eqz v28, :cond_0

    .line 315
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    move-object/from16 v3, v27

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/cyanogenmod/settings/ApnSettings;->mvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 316
    invoke-virtual/range {v34 .. v34}, Lcom/android/cyanogenmod/settings/ApnPreference;->getSelectable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 297
    .end local v14    # "readOnly":Z
    .end local v21    # "mvnoType":Ljava/lang/String;
    .end local v28    # "isMvno":Z
    .end local v30    # "mvnoData":Ljava/lang/String;
    .end local v34    # "pref":Lcom/android/cyanogenmod/settings/ApnPreference;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 300
    .restart local v14    # "readOnly":Z
    .restart local v21    # "mvnoType":Ljava/lang/String;
    .restart local v30    # "mvnoData":Ljava/lang/String;
    :cond_3
    const/16 v28, 0x0

    goto :goto_2

    .line 311
    .restart local v28    # "isMvno":Z
    .restart local v34    # "pref":Lcom/android/cyanogenmod/settings/ApnPreference;
    :cond_4
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 319
    :cond_5
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 322
    :cond_6
    new-instance v15, Lcom/android/cyanogenmod/settings/ApnSettings$ApnInfo;

    move-object/from16 v16, p0

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move/from16 v22, v14

    invoke-direct/range {v15 .. v22}, Lcom/android/cyanogenmod/settings/ApnSettings$ApnInfo;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    .local v15, "apnInfo":Lcom/android/cyanogenmod/settings/ApnSettings$ApnInfo;
    const-string v5, "spn"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 324
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :cond_7
    const-string v5, "gid"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 326
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 327
    :cond_8
    const-string v5, "imsi"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 334
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "apn":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "readOnly":Z
    .end local v15    # "apnInfo":Lcom/android/cyanogenmod/settings/ApnSettings$ApnInfo;
    .end local v21    # "mvnoType":Ljava/lang/String;
    .end local v28    # "isMvno":Z
    .end local v30    # "mvnoData":Ljava/lang/String;
    .end local v34    # "pref":Lcom/android/cyanogenmod/settings/ApnPreference;
    :cond_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 337
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_a

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 338
    :cond_a
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 339
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/preference/Preference;

    .line 340
    .local v34, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 344
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v34    # "pref":Landroid/preference/Preference;
    :cond_b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/preference/Preference;

    .line 345
    .restart local v34    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 350
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v34    # "pref":Landroid/preference/Preference;
    :cond_c
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/preference/Preference;

    .line 351
    .local v35, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 354
    .end local v23    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v29    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v31    # "mvnoGid1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v32    # "mvnoImsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v33    # "mvnoSpnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v35    # "preference":Landroid/preference/Preference;
    :cond_d
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 163
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 165
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    if-eqz v3, :cond_0

    .line 610
    const-string v3, "ro.cdma.home.operator.numeric"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "mccMncForEhrpd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 612
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v0    # "mccMncForEhrpd":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getIccOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "mccMncFromSim":Ljava/lang/String;
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorNumeric: sub= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mcc-mnc= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 620
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private getOperatorNumericSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 599
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "mccmncs":[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "where":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " or numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorNumericSelection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v1

    .line 601
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 602
    .restart local v1    # "where":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 479
    const/4 v7, 0x0

    .line 481
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/cyanogenmod/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 485
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 488
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private handleResetOrFill()V
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->fillList()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :cond_2
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 380
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v3

    .line 381
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 383
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-eq v0, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_0

    .line 383
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 391
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static mvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mvnoType"    # Ljava/lang/String;
    .param p1, "mvnoMatchData"    # Ljava/lang/String;
    .param p2, "serviceProviderName"    # Ljava/lang/String;
    .param p3, "imsiSIM"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    const-string v3, "spn"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    const-string v3, "imsi"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lcom/android/cyanogenmod/settings/ApnSettings;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 412
    goto :goto_0

    .line 405
    :cond_3
    const-string v3, "gid"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 407
    .local v0, "mvno_match_data_length":I
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 492
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->showDialog(I)V

    .line 493
    sput-boolean v3, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 495
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;Lcom/android/cyanogenmod/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 501
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 503
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 504
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/cyanogenmod/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 510
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 470
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v2, Lcom/android/cyanogenmod/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 190
    const v1, 0x7f090937

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUnavailable:Z

    .line 196
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_1
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    .line 204
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate received subId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 177
    new-instance v0, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;-><init>(Lcom/android/cyanogenmod/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    .line 179
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 586
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 590
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 591
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 595
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 427
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 428
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 262
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 432
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 441
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 434
    :pswitch_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 438
    :pswitch_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 244
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->endObserving()V

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 459
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 463
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 466
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 453
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 454
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 455
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 213
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mApnObserver:Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/ApnSettings$ApnObserver;->startObserving()V

    .line 223
    :cond_2
    sget-boolean v0, Lcom/android/cyanogenmod/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/ApnSettings;->fillList()V

    goto :goto_0
.end method

.method public removeDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 582
    return-void
.end method
