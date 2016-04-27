.class public Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAkaAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapMethods:[Ljava/lang/String;

.field private mEapSimAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIbssFreqSpinner:Landroid/widget/Spinner;

.field private mIbssView:Landroid/widget/CheckBox;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSelectedIbssChannelPos:I

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSupportedIbssChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V
    .locals 27
    .param p1, "parent"    # Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v23, "unspecified"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 162
    sget-object v23, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 163
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 164
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 165
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    .line 187
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 190
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 191
    if-nez p3, :cond_2

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 193
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEdit:Z

    .line 195
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 201
    .local v17, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getSimInfo()Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    .line 203
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    .line 204
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    .line 205
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 207
    const v23, 0x7f0c0018

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 208
    const v23, 0x7f0c0020

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 209
    new-instance v23, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1090008

    const v26, 0x7f0c0021

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v23, v0

    const v24, 0x1090009

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 214
    new-instance v23, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1090008

    const v26, 0x7f0c0022

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v23, v0

    const v24, 0x1090009

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f09064a

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002ad

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002a6

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002c1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002c4

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v23

    if-nez v23, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 232
    .local v8, "editOrEphemeral":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f090616

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f10028e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f10028f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f100295

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f10029b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 244
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f04011b

    const v25, 0x1020014

    const v26, 0x7f0c0012

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 247
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 252
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002bd

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002be

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->isIbssSupported()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002c0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 261
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    .line 262
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v10, "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getChannelList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiChannel;

    .line 265
    .local v6, "c":Landroid/net/wifi/WifiChannel;
    iget-boolean v0, v6, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0902ec

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v6, Landroid/net/wifi/WifiChannel;->channelNum:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v6, Landroid/net/wifi/WifiChannel;->freqMHz:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0902ed

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    .end local v6    # "c":Landroid/net/wifi/WifiChannel;
    .end local v8    # "editOrEphemeral":Z
    .end local v10    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "res":Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    goto/16 :goto_0

    .line 228
    .restart local v17    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 249
    .restart local v8    # "editOrEphemeral":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f10000b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 274
    .restart local v10    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v9, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1090008

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 276
    .local v9, "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 281
    .end local v9    # "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v10    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f09066d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 399
    :cond_7
    :goto_4
    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    if-nez v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    .line 401
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f09066f

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 405
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 408
    :cond_9
    return-void

    .line 283
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f10028d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 287
    .local v12, "group":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 289
    .local v18, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 290
    const v23, 0x7f0902e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0902e9

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 291
    const v23, 0x7f0902eb

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->frequency:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0902ed

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 296
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 298
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v23

    sget-object v24, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 300
    const/16 v18, 0x1

    .line 302
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v21

    .line 303
    .local v21, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 304
    const v23, 0x7f09063e

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 322
    .end local v21    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_c
    :goto_6
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v23

    sget-object v24, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    const/16 v18, 0x1

    .line 333
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_7
    if-eqz v8, :cond_e

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002bd

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002be

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    if-eqz v18, :cond_e

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002be

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002bf

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_e
    if-eqz v8, :cond_12

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f09066d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 308
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v22

    .line 310
    .local v22, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v22, :cond_c

    .line 311
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v15

    .line 312
    .local v15, "ipAddr":I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v16, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v15, 0xff

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v23

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v0, v15, 0xff

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v23

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v0, v15, 0xff

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v23

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v0, v15, 0xff

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    const v23, 0x7f09063e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 325
    .end local v15    # "ipAddr":I
    .end local v16    # "ipBuf":Ljava/lang/StringBuffer;
    .end local v22    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_10
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v23

    sget-object v24, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    const/16 v18, 0x1

    goto/16 :goto_7

    .line 329
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 349
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 350
    .local v20, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v19

    .line 352
    .local v19, "signalLevel":Ljava/lang/String;
    if-nez v20, :cond_15

    if-nez v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 353
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f090669

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 392
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isActive()Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v23

    if-nez v23, :cond_7

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f09066b

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 355
    :cond_15
    if-eqz v20, :cond_16

    .line 356
    const v24, 0x7f09063b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 361
    :cond_16
    if-eqz v19, :cond_17

    .line 362
    const v23, 0x7f09063a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 365
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    .line 366
    .local v14, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 367
    const v23, 0x7f09063c

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Mbps"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 371
    :cond_18
    if-eqz v14, :cond_19

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 372
    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    .line 373
    .local v11, "frequency":I
    const/4 v5, 0x0

    .line 375
    .local v5, "band":Ljava/lang/String;
    const/16 v23, 0x960

    move/from16 v0, v23

    if-lt v11, v0, :cond_1b

    const/16 v23, 0x9c4

    move/from16 v0, v23

    if-ge v11, v0, :cond_1b

    .line 377
    const v23, 0x7f0905e7

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 384
    :goto_a
    if-eqz v5, :cond_19

    .line 385
    const v23, 0x7f09063d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v12, v1, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 389
    .end local v5    # "band":Ljava/lang/String;
    .end local v11    # "frequency":I
    :cond_19
    const v23, 0x7f090639

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f1002ac

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 356
    .end local v14    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1a
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 378
    .restart local v5    # "band":Ljava/lang/String;
    .restart local v11    # "frequency":I
    .restart local v14    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1b
    const/16 v23, 0x1324

    move/from16 v0, v23

    if-lt v11, v0, :cond_1c

    const/16 v23, 0x170c

    move/from16 v0, v23

    if-ge v11, v0, :cond_1c

    .line 380
    const v23, 0x7f0905e8

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 382
    :cond_1c
    const-string v23, "WifiConfigController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected frequency "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 403
    .end local v5    # "band":Ljava/lang/String;
    .end local v11    # "frequency":I
    .end local v12    # "group":Landroid/view/ViewGroup;
    .end local v14    # "info":Landroid/net/wifi/WifiInfo;
    .end local v18    # "showAdvancedFields":Z
    .end local v19    # "signalLevel":Ljava/lang/String;
    .end local v20    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    move-object/from16 v23, v0

    const v24, 0x7f0905dc

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040116

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method private checkEapSimInfo()V
    .locals 6

    .prologue
    .line 825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    if-ge v1, v3, :cond_3

    .line 826
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 828
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 832
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_2G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 834
    .restart local v0    # "displayname":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 835
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_3G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 839
    :cond_2
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 842
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 645
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-object v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 646
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 420
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 595
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 599
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 600
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 601
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 602
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 640
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 595
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 607
    :cond_1
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 608
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 609
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 610
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 611
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 612
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, "port":I
    const/4 v5, 0x0

    .line 618
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 619
    invoke-static {v2, v4, v1}, Lcom/android/cyanogenmod/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 623
    :goto_2
    if-nez v5, :cond_3

    .line 624
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 640
    goto :goto_1

    .line 620
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f090498

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 626
    goto :goto_1

    .line 628
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 629
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 630
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 631
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 632
    goto :goto_1

    .line 634
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 635
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 636
    goto :goto_1

    .line 638
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1098
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1100
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1102
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1110
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1112
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1113
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1114
    return-void

    .line 1104
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1105
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1106
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 969
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 982
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 985
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 964
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1117
    if-eqz p2, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1120
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1121
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1122
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1127
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1120
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 974
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1092
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x1090009

    const v9, 0x1090008

    const/16 v8, 0x8

    const v7, 0x7f1002bd

    const/4 v6, 0x0

    .line 867
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 875
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 878
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 950
    :goto_0
    return-void

    .line 880
    :pswitch_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 881
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 882
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 883
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 884
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 887
    :pswitch_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 888
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 889
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 890
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 891
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 895
    :pswitch_2
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 896
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 897
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 899
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 901
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 902
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 906
    :pswitch_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 907
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 908
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 910
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 912
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 913
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 916
    :pswitch_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 920
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 922
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 923
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 925
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 926
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 927
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 928
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 929
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 930
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 933
    .end local v2    # "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 937
    .local v1, "eapAkaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 939
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 940
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 942
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 943
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 944
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 945
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 946
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 947
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f1002ae

    const/4 v5, 0x0

    .line 988
    const/4 v0, 0x0

    .line 990
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 993
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 996
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 997
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 999
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1000
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1001
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1002
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1003
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1005
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1006
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1007
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1008
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1009
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1011
    :cond_1
    if-eqz v0, :cond_5

    .line 1012
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1013
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1014
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1015
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1022
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1026
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1027
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1030
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1035
    :cond_6
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f1002c5

    const v8, 0x7f1002a8

    const v7, 0x7f1002a7

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1040
    const/4 v0, 0x0

    .line 1042
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1045
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1048
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1049
    invoke-direct {p0, v7, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1050
    invoke-direct {p0, v8, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1051
    invoke-direct {p0, v9, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1052
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1053
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1054
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1055
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1056
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1057
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1058
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1060
    :cond_1
    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1062
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1063
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1068
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1069
    invoke-direct {p0, v7, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1070
    invoke-direct {p0, v8, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1071
    invoke-direct {p0, v9, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1073
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1074
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1075
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1077
    :cond_4
    if-eqz v0, :cond_2

    .line 1078
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1079
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1080
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1084
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1085
    invoke-direct {p0, v8, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1086
    invoke-direct {p0, v9, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 12

    .prologue
    const v11, 0x7f10029d

    const v10, 0x7f100298

    const/16 v7, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 720
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v4, :cond_0

    .line 722
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v6, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v4, v5, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 822
    :goto_0
    return-void

    .line 727
    :cond_0
    iget v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 734
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1001d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 735
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 736
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100291

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 739
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_2

    .line 740
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f090649

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 744
    :cond_2
    iget v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 745
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 748
    :cond_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v4, :cond_8

    .line 751
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 752
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->checkEapSimInfo()V

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v2, "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 755
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 756
    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 759
    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 763
    .end local v2    # "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    .line 766
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 768
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f10029e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 769
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 770
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 771
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f10029f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 772
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1002b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 773
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1002a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 774
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1002a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 775
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1002a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 776
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1002a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 778
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 779
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 782
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_7

    .line 783
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 784
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 785
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 786
    .local v3, "phase2Method":I
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 787
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 788
    packed-switch v0, :pswitch_data_0

    .line 806
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 809
    :goto_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 810
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 790
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    .line 801
    :pswitch_1
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phase 2 method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 792
    :pswitch_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 795
    :pswitch_3
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 798
    :pswitch_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 816
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "phase2Method":I
    :cond_7
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 817
    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 820
    :cond_8
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 790
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 652
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 716
    :goto_0
    return v10

    .line 654
    :cond_0
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f090680

    goto :goto_0

    .line 657
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 658
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 659
    const v10, 0x7f090680

    goto :goto_0

    .line 662
    :cond_2
    const/4 v9, -0x1

    .line 664
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 665
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 666
    :cond_3
    const v10, 0x7f090683

    goto :goto_0

    .line 668
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_1
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 679
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 680
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 681
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 682
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 697
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 699
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090685

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :goto_3
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 709
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 711
    if-nez v2, :cond_9

    .line 712
    const v10, 0x7f090682

    goto/16 :goto_0

    .line 669
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f09068b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 687
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 688
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 689
    const v10, 0x7f090681

    goto/16 :goto_0

    .line 691
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 701
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 702
    if-nez v2, :cond_8

    .line 703
    const v10, 0x7f090682

    goto/16 :goto_0

    .line 705
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 714
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 684
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 683
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1145
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 432
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 433
    .local v2, "submit":Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 456
    :goto_0
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 436
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 438
    .local v1, "passwordInvalid":Z
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 441
    :cond_2
    const/4 v1, 0x1

    .line 444
    :cond_3
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 447
    :cond_6
    const/4 v0, 0x0

    .line 455
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 449
    :cond_7
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 450
    const/4 v0, 0x1

    goto :goto_1

    .line 452
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v10, -0x1

    const/16 v13, 0x22

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 459
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-eq v9, v10, :cond_0

    iget-boolean v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v9, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 591
    :goto_0
    return-object v2

    .line 463
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 465
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    if-nez v9, :cond_2

    .line 466
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 469
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 470
    iput-boolean v12, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 471
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    iget v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiChannel;

    iget v9, v9, Landroid/net/wifi/WifiChannel;->freqMHz:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 487
    :goto_1
    iget v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v9, :pswitch_data_0

    .line 584
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    :cond_1
    iput-boolean v12, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 476
    :cond_2
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    if-ne v9, v10, :cond_3

    .line 477
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 479
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-boolean v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v9, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 480
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->frequency:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 482
    :cond_3
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->networkId:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 483
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-boolean v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v9, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 484
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/cyanogenmod/settings/wifi/AccessPoint;->frequency:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 489
    :pswitch_0
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 587
    :cond_4
    :goto_2
    new-instance v9, Landroid/net/IpConfiguration;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v11, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v12, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v13, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 493
    :pswitch_1
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 494
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 495
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    .line 496
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 497
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 498
    .local v4, "length":I
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "password":Ljava/lang/String;
    const/16 v9, 0xa

    if-eq v4, v9, :cond_5

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_5

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_6

    :cond_5
    const-string v9, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 502
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v9, v11

    goto :goto_2

    .line 504
    :cond_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    goto :goto_2

    .line 510
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    .line 511
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 512
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 514
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 516
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 522
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 523
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v14}, Ljava/util/BitSet;->set(I)V

    .line 524
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 525
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 526
    .local v3, "eapMethod":I
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 527
    .local v6, "phase2Method":I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 528
    packed-switch v3, :pswitch_data_1

    .line 559
    :pswitch_4
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 562
    :goto_3
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    .local v0, "caCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v0, ""

    .line 564
    :cond_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 565
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v1, ""

    .line 567
    :cond_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 568
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 569
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 572
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 575
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 576
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 533
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_5
    packed-switch v6, :pswitch_data_2

    .line 544
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown phase2 method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 535
    :pswitch_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 538
    :pswitch_7
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 541
    :pswitch_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 550
    :pswitch_9
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 551
    .local v7, "selectedSimCardName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 553
    .local v8, "selectedSimCardNumber":I
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedSimCardNumber is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 555
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 580
    .end local v7    # "selectedSimCardName":Ljava/lang/String;
    .end local v8    # "selectedSimCardNumber":I
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 528
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 533
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 425
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v6, 0x7f1002c2

    const v5, 0x7f1002bf

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1154
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f100291

    if-ne v1, v2, :cond_2

    .line 1155
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1156
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1160
    if-ltz v0, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1176
    .end local v0    # "pos":I
    .end local p1    # "view":Landroid/widget/CompoundButton;
    :cond_0
    :goto_1
    return-void

    .line 1156
    .restart local v0    # "pos":I
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1163
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1002be

    if-ne v1, v2, :cond_4

    .line 1164
    if-eqz p2, :cond_3

    .line 1165
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1167
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1169
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1002c1

    if-ne v1, v2, :cond_0

    .line 1170
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1171
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1173
    :cond_5
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1181
    iput p3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1182
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1192
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1193
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1184
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1186
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1188
    iput p3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    goto :goto_0

    .line 1190
    :cond_3
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1150
    return-void
.end method
