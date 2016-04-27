.class public Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# static fields
.field private static final USB_FUNCTION_DEFAULT:Ljava/lang/String;


# instance fields
.field private mCharging:Landroid/preference/CheckBoxPreference;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mOperationInProgress:Z

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mSDCard:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "mtp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    .line 77
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->enableUms()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 120
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 123
    :cond_0
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 126
    const-string v1, "usb_mtp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v1, "usb_charging"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v1, "usb_sdcard"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    .line 131
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const-string v1, "UsbSettings"

    const-string v2, "createPreferenceHierarchy mass_storage enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    :cond_2
    return-object v0
.end method

.method private enableUms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    .line 294
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 295
    const-string v0, "mass_storage"

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private isMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 109
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 110
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 111
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const/4 v5, 0x1

    .line 115
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 110
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isPrimaryMassStorage()Z
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 288
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 289
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->removeDialog(I)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->showDialog(I)V

    .line 323
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const-string v0, "UsbSettings"

    const-string v1, "USB is locked down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 243
    :goto_1
    return-void

    .line 208
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 213
    :cond_1
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 218
    :cond_2
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 235
    :cond_4
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    if-nez v0, :cond_5

    .line 237
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbFunctionState()V
    .locals 3

    .prologue
    .line 99
    const-string v1, "persist.sys.usb.config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "functions":Ljava/lang/String;
    sget-object v1, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 149
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 150
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    .line 151
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 300
    packed-switch p1, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09088b

    new-instance v2, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d8

    new-instance v2, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-static {}, Lcom/android/cyanogenmod/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    .line 261
    sget-object v0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    .line 262
    .local v0, "function":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    const-string v0, "mtp"

    .line 280
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 281
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    const-string v0, "ptp"

    goto :goto_1

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 267
    const-string v0, "charging"

    goto :goto_1

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->isPrimaryMassStorage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->showDialogInner(I)V

    goto :goto_0

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    const-string v0, "mass_storage"

    goto :goto_1

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    const-string v1, "UsbSettings"

    const-string v2, "MTP is default and if you uncheck it, we will default back to it.  Skipping the work."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mOperationInProgress:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 191
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 194
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    .line 200
    return-void
.end method
