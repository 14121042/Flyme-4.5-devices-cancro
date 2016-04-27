.class public final Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;
    .param p2, "x2"    # Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 12

    .prologue
    .line 149
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 150
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .line 152
    .local v7, "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    instance-of v9, v7, Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;

    if-nez v9, :cond_0

    instance-of v9, v7, Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;

    if-nez v9, :cond_0

    .line 154
    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    .line 155
    .local v6, "pref":Landroid/preference/Preference;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 159
    .end local v6    # "pref":Landroid/preference/Preference;
    .end local v7    # "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v4

    .line 160
    .local v4, "pbapPermission":I
    const-string v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v9, 0x3

    if-ne v4, v9, :cond_2

    .line 162
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 163
    .local v8, "psp":Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    .line 164
    .local v5, "pbapPref":Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    .end local v5    # "pbapPref":Landroid/preference/CheckBoxPreference;
    .end local v8    # "psp":Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;
    :cond_2
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    .line 168
    .local v1, "mapPermission":I
    const-string v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v1, :cond_3

    .line 170
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;

    move-result-object v3

    .line 171
    .local v3, "mapProfile":Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 172
    .local v2, "mapPreference":Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    .end local v2    # "mapPreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "mapProfile":Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 176
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    .line 272
    .local v0, "device":Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    const v6, 0x7f090461

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f090455

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f090456

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    .line 305
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/cyanogenmod/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 307
    return-void
.end method

.method private createProfilePreference(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 3
    .param p1, "profile"    # Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 198
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "pref":Landroid/preference/CheckBoxPreference;
    const v2, 0x7f0400b6

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 202
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 203
    invoke-interface {p1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 204
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 207
    .local v0, "iconResource":I
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    .line 213
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 374
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v2

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    :try_start_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .param p1, "profIndex"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/preference/CheckBoxPreference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 234
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 236
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 237
    .local v2, "status":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    .line 240
    .local v1, "isConnected":Z
    :goto_0
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    .line 266
    :goto_1
    return-void

    .end local v1    # "isConnected":Z
    :cond_0
    move v1, v4

    .line 237
    goto :goto_0

    .line 243
    .restart local v1    # "isConnected":Z
    :cond_1
    instance-of v5, p1, Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;

    if-eqz v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, v3}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 245
    invoke-direct {p0, p2, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    .line 253
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 255
    instance-of v3, p1, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 246
    :cond_3
    instance-of v5, p1, Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;

    if-eqz v5, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 258
    :cond_4
    invoke-interface {p1, v0, v4}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 259
    invoke-direct {p0, p2, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 262
    :cond_5
    invoke-interface {p1, v0, v3}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 263
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 316
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 321
    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .param p1, "profilePref"    # Landroid/preference/CheckBoxPreference;
    .param p2, "profile"    # Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 353
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 356
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 358
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    :goto_2
    invoke-interface {p2, v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 371
    return-void

    :cond_0
    move v1, v3

    .line 356
    goto :goto_0

    :cond_1
    move v2, v3

    .line 359
    goto :goto_1

    .line 361
    :cond_2
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    .line 362
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 364
    :cond_4
    instance-of v1, p2, Lcom/android/cyanogenmod/settings/bluetooth/PanProfile;

    if-eqz v1, :cond_6

    .line 365
    invoke-interface {p2, v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    :goto_4
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_4

    .line 368
    :cond_6
    invoke-interface {p2, v0}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 7

    .prologue
    .line 324
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .line 325
    .local v2, "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 326
    .local v3, "profilePref":Landroid/preference/CheckBoxPreference;
    if-nez v3, :cond_0

    .line 327
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    .line 328
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 334
    .end local v2    # "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profilePref":Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    .line 335
    .restart local v2    # "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 336
    .local v3, "profilePref":Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 337
    instance-of v4, v2, Lcom/android/cyanogenmod/settings/bluetooth/PbapServerProfile;

    if-eqz v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    .line 339
    .local v1, "pbapPermission":I
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: pbapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-nez v1, :cond_2

    .line 343
    .end local v1    # "pbapPermission":I
    :cond_3
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from profile list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 348
    .end local v2    # "profile":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profilePref":Landroid/preference/Preference;
    :cond_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 349
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 180
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 82
    const-string v1, "profile_container"

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 83
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    const v2, 0x7f04001b

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    .line 86
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "Error: Can\'t get LocalBluetoothManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 92
    .local v0, "deviceManager":Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfileManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 105
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 312
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->setAliasName(Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x1

    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v1

    .line 219
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 221
    .local v0, "prof":Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_2

    .line 222
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v0, p1}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0

    .line 224
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    const-string v2, "DeviceProfilesSettings"

    const-string v3, "Error: Can\'t get the profile for the preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 119
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public setDevice(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    .line 141
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/cyanogenmod/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 143
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 144
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 146
    :cond_0
    return-void
.end method
