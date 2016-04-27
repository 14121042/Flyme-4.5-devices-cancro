.class public Lcom/android/cyanogenmod/settings/PrivacySettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/android/cyanogenmod/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 143
    new-instance v0, Lcom/android/cyanogenmod/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/PrivacySettings$1;-><init>(Lcom/android/cyanogenmod/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/PrivacySettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/PrivacySettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/PrivacySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/PrivacySettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/PrivacySettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "nonVisibleKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 318
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 320
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    :goto_0
    if-eqz v2, :cond_2

    .line 326
    const-string v4, "backup_inactive"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    const-string v4, "personal_data_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 339
    const-string v4, "backup_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    return-object v3

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "auto_restore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v4, "configure_account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v4, "backup_data"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 267
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 259
    goto :goto_1

    :cond_2
    move v2, v3

    .line 260
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090ad0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 173
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mDialogType:I

    .line 174
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090add

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090adc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 181
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "summary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "transport":Ljava/lang/String;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 189
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 190
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 191
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 193
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 194
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 196
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    .end local v6    # "transport":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 205
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 207
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v3, v8

    .line 208
    .local v3, "configureEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 209
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 211
    return-void

    .line 197
    .end local v3    # "configureEnabled":Z
    :catch_0
    move-exception v4

    .line 199
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    move v7, v9

    .line 203
    goto :goto_1

    :cond_1
    move v3, v9

    .line 207
    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 271
    const v0, 0x7f090c6a

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 236
    iget v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 238
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 239
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 244
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->updateConfigureSummary()V

    .line 246
    :cond_1
    iput v2, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mDialogType:I

    .line 247
    return-void

    .line 240
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mEnabled:Z

    .line 85
    iget-boolean v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mEnabled:Z

    if-nez v7, :cond_0

    .line 121
    :goto_0
    return-void

    .line 89
    :cond_0
    const v7, 0x7f060037

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 91
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 94
    const-string v7, "backup_data"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    .line 95
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    const-string v7, "auto_restore"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 98
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v7, "configure_account"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 102
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cyanogenmod/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 103
    .local v3, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 104
    .local v6, "screenPreferenceCount":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 105
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 106
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 110
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_2
    const-string v7, "backup_category"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 111
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 113
    .local v1, "backupCategoryPreferenceCount":I
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 114
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 115
    .restart local v4    # "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 120
    .end local v1    # "backupCategoryPreferenceCount":I
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->updateToggles()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 128
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/PrivacySettings;->updateToggles()V

    .line 131
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/PrivacySettings;->mDialogType:I

    .line 140
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onStop()V

    .line 141
    return-void
.end method
