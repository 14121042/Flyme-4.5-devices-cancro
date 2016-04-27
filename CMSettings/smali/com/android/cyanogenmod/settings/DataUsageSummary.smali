.class public Lcom/android/cyanogenmod/settings/DataUsageSummary;
.super Lcom/android/cyanogenmod/settings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/cyanogenmod/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1461
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2528
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$14;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$14;-><init>()V

    sput-object v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/cyanogenmod/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/HighlightingFragment;-><init>()V

    .line 212
    iput v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    .line 247
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    .line 253
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    .line 259
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 713
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$3;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 733
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$4;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1165
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$6;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1186
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$7;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1200
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$8;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1216
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$9;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1230
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$10;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1330
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$11;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1361
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$12;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1400
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$13;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartListener:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2275
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/cyanogenmod/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/cyanogenmod/settings/DataUsageSummary;Lcom/android/cyanogenmod/settings/net/ChartData;)Lcom/android/cyanogenmod/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/cyanogenmod/settings/net/ChartData;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/cyanogenmod/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/cyanogenmod/settings/DataUsageSummary;Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;)Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/cyanogenmod/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 650
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 651
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 2254
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2255
    .local v0, "template":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 2267
    :goto_0
    return-object v1

    .line 2257
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2263
    :pswitch_0
    const-string v1, "mobile"

    goto :goto_0

    .line 2259
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 2261
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 2265
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 2257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 636
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 637
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 639
    invoke-static {}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 640
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 641
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 642
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1465
    const v8, 0x10010

    .line 1467
    .local v8, "flags":I
    sget-object v9, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1468
    :try_start_0
    sget-object v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1469
    sget-object v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1471
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 1396
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1397
    .local v0, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1390
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1391
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    .line 1027
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1028
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSubTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2570
    if-gtz p1, :cond_0

    .line 2571
    const-string v0, ""

    .line 2573
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubTitle(I)Ljava/lang/String;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 2579
    if-gtz p1, :cond_0

    .line 2580
    const-string v4, ""

    .line 2593
    :goto_0
    return-object v4

    .line 2584
    :cond_0
    add-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 2585
    .local v2, "subIds":[I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 2586
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 2587
    aget v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2588
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2589
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2586
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2593
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const v4, 0x7f090274

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2355
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 2340
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2341
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2344
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2345
    .local v1, "defaultSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2346
    .local v2, "slotId":I
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2378
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2379
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 2423
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2426
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2427
    .local v1, "resId":I
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2415
    const v2, 0x7f040096

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2416
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2418
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2419
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2493
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2494
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2498
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2499
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2500
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2502
    new-instance v3, Lcom/android/cyanogenmod/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/cyanogenmod/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2503
    new-instance v3, Lcom/android/cyanogenmod/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/cyanogenmod/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2504
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1016
    :goto_0
    return v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 973
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private multiSimGetCurrentSub()I
    .locals 3

    .prologue
    .line 2599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2601
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2607
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 2600
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2607
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    .line 1034
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1036
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1037
    return-void

    .line 1034
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 990
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v0

    .line 994
    .local v0, "phoneId":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 998
    .local v1, "subId":[I
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v4, v1, v3

    invoke-virtual {v2, v4, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledUsingSubId(IZ)V

    .line 1003
    .end local v0    # "phoneId":I
    .end local v1    # "subId":[I
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1004
    return-void

    .restart local v0    # "phoneId":I
    :cond_0
    move v2, v3

    .line 994
    goto :goto_0

    .line 1000
    .end local v0    # "phoneId":I
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1001
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 962
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 963
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 957
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2520
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2521
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2522
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2511
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2512
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2513
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 848
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 849
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 851
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 868
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/cyanogenmod/settings/net/UidDetail;

    move-result-object v7

    .line 869
    .local v7, "detail":Lcom/android/cyanogenmod/settings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 873
    const/16 v18, 0x0

    .line 874
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 875
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 876
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 877
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 878
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 879
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f04003a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 880
    const v20, 0x7f10009a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 881
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 876
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 855
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/cyanogenmod/settings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 951
    :goto_1
    return-void

    .line 886
    .restart local v7    # "detail":Lcom/android/cyanogenmod/settings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f04003a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 887
    const v20, 0x7f10009a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 888
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, v7, Lcom/android/cyanogenmod/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 895
    const v20, 0x7f10009b

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 901
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 902
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 903
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const/4 v13, 0x0

    .line 908
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 909
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 911
    const/4 v13, 0x1

    .line 916
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/cyanogenmod/settings/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary$5;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 937
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateDetailData()V

    .line 939
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f090bb5

    invoke-static/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f090bb6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 897
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 908
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 932
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 949
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 10

    .prologue
    const v9, 0x7f090baf

    const v8, 0x7f090ba4

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 747
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mBinding:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 836
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 751
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 754
    .local v3, "isOwner":Z
    :goto_1
    if-nez v1, :cond_2

    .line 755
    const-string v4, "DataUsage"

    const-string v5, "no tab selected; hiding body"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v3    # "isOwner":Z
    :cond_1
    move v3, v5

    .line 752
    goto :goto_1

    .line 759
    .restart local v3    # "isOwner":Z
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 762
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 766
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 767
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 771
    const-string v4, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 772
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 773
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 774
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 829
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentApp:Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;

    invoke-static {v7, v8}, Lcom/android/cyanogenmod/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/cyanogenmod/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v6, v7, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 833
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 835
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mBinding:Z

    goto :goto_0

    .line 776
    :cond_4
    const-string v4, "SIM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 777
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 779
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 780
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v4

    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v4, v6, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v4

    sget-object v6, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v4, v6, :cond_6

    .line 785
    :cond_5
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 786
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 793
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 795
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 778
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 788
    :cond_8
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 798
    .end local v2    # "i":I
    :cond_9
    const-string v4, "3g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 799
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x7f090bb0

    invoke-static {v4, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 800
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x7f090ba6

    invoke-static {v4, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 802
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 804
    :cond_a
    const-string v4, "4g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 805
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x7f090bb1

    invoke-static {v4, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 806
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x7f090ba5

    invoke-static {v4, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 808
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 810
    :cond_b
    const-string v4, "wifi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 812
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 813
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 814
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 816
    :cond_c
    const-string v4, "ethernet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 818
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 819
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 820
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 823
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tab: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;

    .line 1100
    .local v17, "previousItem":Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1104
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1105
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1106
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    if-eqz v4, :cond_0

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1112
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1113
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1115
    :cond_2
    const/16 v16, 0x0

    .line 1116
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1118
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1121
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1122
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1123
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1126
    move-wide v8, v6

    .line 1127
    const/16 v16, 0x1

    .line 1128
    goto :goto_0

    .line 1131
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1134
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1136
    move-wide/from16 v8, v18

    .line 1137
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1138
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1139
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1140
    move-wide v8, v6

    .line 1141
    goto :goto_1

    .line 1143
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1147
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 1149
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;

    .line 1154
    .local v24, "selectedItem":Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1155
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1163
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1158
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1161
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1272
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1273
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1275
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1277
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1278
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_2

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1281
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1282
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1283
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1284
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1286
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/cyanogenmod/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1312
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1313
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1317
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1328
    return-void

    .line 1300
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    if-eqz v3, :cond_3

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartData:Lcom/android/cyanogenmod/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/cyanogenmod/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1304
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/cyanogenmod/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1311
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_1

    .line 1320
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1323
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090b90

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 541
    :goto_0
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090b93

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 547
    :goto_1
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f090b95

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 552
    :goto_2
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090b8f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090b92

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f090b94

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1044
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1045
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1047
    .local v1, "disableAtLimitVisible":Z
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v6

    sget-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v6, v7, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v6

    sget-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1055
    const/4 v0, 0x0

    .line 1058
    :cond_1
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1059
    const/4 v0, 0x0

    .line 1060
    const/4 v1, 0x0

    .line 1064
    :cond_2
    const-string v6, "mobile"

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v7, "SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1065
    :cond_3
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mBinding:Z

    .line 1066
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1067
    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mBinding:Z

    .line 1070
    :cond_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1071
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1072
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_7

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1073
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1074
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1083
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_9

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_a

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    if-eqz p1, :cond_6

    .line 1088
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1090
    :cond_6
    return-void

    :cond_7
    move v3, v4

    .line 1072
    goto :goto_0

    .line 1079
    :cond_8
    const/4 v1, 0x0

    .line 1080
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_9
    move v3, v5

    .line 1083
    goto :goto_2

    :cond_a
    move v4, v5

    .line 1084
    goto :goto_3
.end method

.method private updateTabs()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 661
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 663
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 664
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "3g"

    const v10, 0x7f090bac

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 665
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "4g"

    const v10, 0x7f090bab

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 677
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v8, :cond_1

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 678
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "wifi"

    const v10, 0x7f090ba8

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 680
    :cond_1
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 681
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "ethernet"

    const v10, 0x7f090ba9

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 686
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 687
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 666
    .end local v1    # "i":I
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_3
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 667
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 668
    .local v4, "phoneCount":I
    if-le v4, v6, :cond_4

    .line 669
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 670
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    add-int/lit8 v9, v1, 0x1

    invoke-direct {p0, v9}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-direct {p0, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getSubTitle(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 673
    .end local v1    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "mobile"

    const v10, 0x7f090baa

    invoke-direct {p0, v9, v10}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 691
    .end local v4    # "phoneCount":I
    :cond_5
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v8

    if-nez v8, :cond_7

    move v3, v6

    .line 692
    .local v3, "noTabs":Z
    :goto_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v8

    if-le v8, v6, :cond_8

    move v2, v6

    .line 693
    .local v2, "multipleTabs":Z
    :goto_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 694
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 695
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 697
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateBody()V

    .line 701
    :goto_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 708
    :cond_6
    :goto_7
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_7
    move v3, v7

    .line 691
    goto :goto_3

    .restart local v3    # "noTabs":Z
    :cond_8
    move v2, v7

    .line 692
    goto :goto_4

    .line 693
    .restart local v2    # "multipleTabs":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_5

    .line 699
    :cond_a
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_6

    .line 702
    :cond_b
    if-eqz v3, :cond_6

    .line 704
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateBody()V

    goto :goto_7
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2390
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2391
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2394
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2407
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2399
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2400
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2403
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2407
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, "context":Landroid/content/Context;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 280
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 282
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 283
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 285
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 287
    new-instance v2, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    .line 288
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->read()V

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    .line 307
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    .line 310
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    .line 312
    iput-boolean v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    .line 315
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 316
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 302
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 303
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 481
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 482
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f100000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f040044

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/cyanogenmod/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    .line 327
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 328
    const v4, 0x7f1000af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 329
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 330
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 334
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_1

    move v1, v5

    .line 336
    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    .line 339
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v6}, Lcom/android/cyanogenmod/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 341
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 342
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 344
    const v4, 0x7f040042

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 345
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 348
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 349
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 351
    iget v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 354
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f1000ab

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 361
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f1000ac

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 363
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 364
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 365
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 366
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 367
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 369
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 370
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 371
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 375
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 376
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 377
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 378
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 380
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 382
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    const v4, 0x7f040040

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 386
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 387
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f1000a4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 388
    new-instance v4, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    .line 389
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 390
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 391
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f1000a5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 392
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f10009d

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    .line 396
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChartListener:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->setListener(Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 397
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mChart:Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/android/cyanogenmod/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 401
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f1000a6

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 402
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f100010

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 403
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f1000a7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 404
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f1000a8

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 405
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f1000a9

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 406
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f1000aa

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 408
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f100012

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 410
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 411
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 413
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 414
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 415
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 416
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f1000ad

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 421
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 422
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f1000ae

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 424
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 425
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/cyanogenmod/settings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;

    .line 426
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 427
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mAdapter:Lcom/android/cyanogenmod/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 429
    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    move v1, v6

    .line 334
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 615
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 617
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/net/UidDetailProvider;->clearCache()V

    .line 619
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/cyanogenmod/settings/net/UidDetailProvider;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 624
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/HighlightingFragment;->onDestroy()V

    .line 625
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    .line 609
    :goto_0
    :pswitch_0
    return v9

    .line 558
    :pswitch_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .line 559
    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 560
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    .line 558
    goto :goto_1

    .line 563
    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 568
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    .line 569
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 570
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateMenuTitles()V

    .line 571
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 575
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    .line 576
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateMenuTitles()V

    .line 578
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 586
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v9, :cond_4

    .line 588
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.msim.SelectSubscription"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "TARGET_THEME"

    const-string v2, "Theme.Material.Settings"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 596
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 603
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 604
    .local v0, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/android/cyanogenmod/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090bd0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x7f10031e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 487
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 488
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    .line 490
    .local v4, "isOwner":Z
    :goto_0
    const v8, 0x7f10031f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 491
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 492
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    move v8, v6

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    :goto_2
    const v8, 0x7f100320

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 499
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 504
    :goto_4
    const v8, 0x7f10031e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 505
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    move v8, v6

    :goto_5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    const v8, 0x7f100321

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 509
    .local v5, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 510
    :cond_0
    if-nez v0, :cond_7

    move v8, v6

    :goto_6
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 516
    :goto_7
    const v8, 0x7f100322

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 517
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    const v8, 0x7f100323

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 520
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    :goto_8
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    const v6, 0x7f100324

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 525
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090c63

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 526
    invoke-static {v1, v2, v3}, Lcom/android/cyanogenmod/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 531
    :goto_9
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateMenuTitles()V

    .line 532
    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v5    # "metered":Landroid/view/MenuItem;
    :cond_1
    move v4, v7

    .line 488
    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_2
    move v8, v7

    .line 492
    goto/16 :goto_1

    .line 494
    :cond_3
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v8, v7

    .line 499
    goto/16 :goto_3

    .line 501
    :cond_5
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v8, v7

    .line 505
    goto :goto_5

    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_7
    move v8, v7

    .line 510
    goto :goto_6

    .line 512
    :cond_8
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v6, v7

    .line 520
    goto :goto_8

    .line 528
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 447
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/HighlightingFragment;->onResume()V

    .line 449
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/cyanogenmod/settings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$1;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 457
    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$2;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 477
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateTabs()V

    .line 443
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1022
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1023
    return-void
.end method
