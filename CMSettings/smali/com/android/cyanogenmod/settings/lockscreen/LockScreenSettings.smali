.class public Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDirectlyShow:Landroid/preference/SwitchPreference;

.field private mIsPrimary:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisibleDots:Landroid/preference/SwitchPreference;

.field private mVisibleErrorPattern:Landroid/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible_error_pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "directlyshow"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visibledots"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 540
    new-instance v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    .line 543
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method private createPreferenceHierarchy()V
    .locals 23

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 156
    .local v14, "root":Landroid/preference/PreferenceScreen;
    if-eqz v14, :cond_0

    .line 157
    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 159
    :cond_0
    const v19, 0x7f06003e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 166
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v13

    .line 167
    .local v13, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mIsPrimary:Z

    .line 172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 174
    const-string v19, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 175
    .local v10, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v10, :cond_1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 177
    const v19, 0x7f09051a

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 185
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 186
    const-string v19, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 187
    .local v18, "unlockSetOrChange":Landroid/preference/Preference;
    if-eqz v18, :cond_2

    .line 188
    const v19, 0x7f090393

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 194
    .end local v18    # "unlockSetOrChange":Landroid/preference/Preference;
    :cond_2
    const-string v19, "lock_after_timeout"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->setupLockAfterPreference()V

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->updateLockAfterPreferenceSummary()V

    .line 201
    :cond_3
    const-string v19, "biometric_weak_liveliness"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    .line 205
    const-string v19, "visiblepattern"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 208
    const-string v19, "visible_error_pattern"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    .line 211
    const-string v19, "directlyshow"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    .line 214
    const-string v19, "visibledots"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    .line 217
    const-string v19, "power_button_instantly_locks"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActiveTrustAgentTitle()Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, "trustAgentName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090841

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    :cond_4
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 231
    .local v15, "securityCategory":Landroid/preference/PreferenceGroup;
    const v19, 0x7f06003f

    move/from16 v0, v19

    if-ne v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v19

    const/high16 v20, 0x10000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 234
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_5
    const-string v19, "general_category"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 245
    .local v6, "generalCategory":Landroid/preference/PreferenceGroup;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v19

    if-nez v19, :cond_6

    if-eqz v6, :cond_6

    .line 246
    const-string v19, "lockscreen_visualizer"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    .line 248
    .local v5, "displayVisualizer":Landroid/preference/SwitchPreference;
    if-eqz v5, :cond_6

    .line 249
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    .end local v5    # "displayVisualizer":Landroid/preference/SwitchPreference;
    :cond_6
    if-eqz v15, :cond_a

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    .line 256
    .local v7, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v4

    .line 258
    .local v4, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_a

    .line 259
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 260
    .local v3, "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 262
    .local v17, "trustAgentPreference":Landroid/preference/Preference;
    const-string v19, "trust_agent"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 263
    iget-object v0, v3, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, v3, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, v3, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 271
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    if-nez v7, :cond_7

    .line 273
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    const v19, 0x7f090573

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 258
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 170
    .end local v3    # "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v6    # "generalCategory":Landroid/preference/PreferenceGroup;
    .end local v7    # "hasSecurity":Z
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v15    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v16    # "trustAgentName":Ljava/lang/String;
    .end local v17    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 179
    .restart local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_9
    const v19, 0x7f090518

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 279
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    .restart local v6    # "generalCategory":Landroid/preference/PreferenceGroup;
    .restart local v15    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v16    # "trustAgentName":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    sget-object v19, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_c

    .line 280
    sget-object v19, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v19, v19, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 281
    .local v12, "pref":Landroid/preference/Preference;
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 283
    .end local v12    # "pref":Landroid/preference/Preference;
    :cond_c
    return-void
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 379
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 380
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 381
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 384
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 385
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 386
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 391
    :cond_2
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 393
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 395
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 396
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 397
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 404
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 405
    return-void

    .line 404
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getActiveTrustAgentTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 286
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 287
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v5}, Lcom/android/cyanogenmod/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    .line 289
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 290
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 291
    .local v0, "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v4, v0, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, v0, Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 296
    .end local v0    # "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :goto_1
    return-object v4

    .line 289
    .restart local v0    # "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "agent":Lcom/android/cyanogenmod/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 304
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 305
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 307
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    const v1, 0x7f060043

    .line 334
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 305
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 310
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f060040

    goto :goto_1

    .line 312
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingFingerprint()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    const v1, 0x7f060042

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 317
    const v1, 0x7f06003f

    goto :goto_1

    .line 319
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 321
    :sswitch_0
    const v1, 0x7f060046

    .line 322
    goto :goto_1

    .line 325
    :sswitch_1
    const v1, 0x7f060049

    .line 326
    goto :goto_1

    .line 330
    :sswitch_2
    const v1, 0x7f060045

    goto :goto_1

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 342
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 343
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 345
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 347
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 351
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->disableUnusableTimeouts(J)V

    .line 353
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 344
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 359
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 361
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 362
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 363
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 364
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 365
    move v0, v4

    .line 362
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    .end local v6    # "timeout":J
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActiveTrustAgentTitle()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "trustAgentName":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 371
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090510

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    :goto_1
    return-void

    .line 374
    :cond_2
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f09050f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startBiometricWeakImprove()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 423
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 424
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 429
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 435
    :cond_3
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/search/Index;

    move-result-object v1

    const-class v2, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/cyanogenmod/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 440
    :cond_4
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    new-instance v0, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    .line 120
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 124
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 445
    const/4 v4, 0x1

    .line 446
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 448
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v6, "lock_after_timeout"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 449
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 451
    .local v5, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->updateLockAfterPreferenceSummary()V

    .line 490
    .end local v5    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 453
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "SecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v6, "lockenabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 458
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 459
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v6, "visiblepattern"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 460
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v6, "directlyshow"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 462
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPassToSecurityView(Z)V

    goto :goto_1

    .line 463
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v6, "visible_error_pattern"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 464
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setShowErrorPath(Z)V

    goto :goto_1

    .line 465
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v6, "visibledots"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 466
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleDotsEnabled(Z)V

    goto :goto_1

    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v6, "biometric_weak_liveliness"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 468
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 469
    invoke-virtual {v3, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 474
    :cond_7
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 475
    new-instance v1, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 477
    .local v1, "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    const/16 v6, 0x7d

    invoke-virtual {v1, v6, v9, v9}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 483
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 484
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 487
    .end local v1    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v6, "power_button_instantly_locks"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 495
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f090539

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    move v0, v9

    .line 526
    :goto_1
    return v0

    .line 499
    :cond_1
    const-string v0, "manage_fingerprints"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v9, v9}, Lcom/android/cyanogenmod/settings/ManageFingerprints;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v7

    .line 501
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 502
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    new-instance v6, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 505
    .local v6, "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    const/16 v0, 0x7c

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 513
    .end local v6    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    :cond_3
    const-string v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    new-instance v6, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 516
    .restart local v6    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 517
    const/16 v0, 0x7e

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 521
    iput-object v5, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 524
    .end local v6    # "helper":Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()V

    .line 132
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 133
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isShowErrorPath()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->shouldPassToSecurityView()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleDotsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 152
    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 535
    :cond_0
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 411
    return-void
.end method
