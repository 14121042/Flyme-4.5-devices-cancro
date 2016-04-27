.class public Lcom/android/cyanogenmod/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/cyanogenmod/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/cyanogenmod/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field mAppInstallLocationDialog:Landroid/app/AlertDialog;

.field private mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPinnedHeader:Landroid/view/ViewGroup;

.field private mProfileSpinnerAdapter:Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 192
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1418
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$3;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private locateIndex(I)I
    .locals 2
    .param p1, "appInstallID"    # I

    .prologue
    .line 1326
    const/4 v0, 0x2

    .line 1327
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1328
    const/4 v0, 0x0

    .line 1334
    :cond_0
    :goto_0
    return v0

    .line 1329
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1330
    const/4 v0, 0x1

    goto :goto_0

    .line 1331
    :cond_2
    if-nez p1, :cond_0

    .line 1332
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showAppInstallLocationSettingDlg()V
    .locals 6

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1340
    .local v0, "appInstallID":I
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->locateIndex(I)I

    move-result v2

    .line 1342
    .local v2, "selectedLocation":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1344
    .local v1, "items":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 1345
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0908ad

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/cyanogenmod/settings/applications/ManageApplications$2;

    invoke-direct {v4, p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$2;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)V

    invoke-virtual {v3, v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    .line 1378
    :goto_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1379
    return-void

    .line 1376
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1105
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1106
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .line 1109
    .local v0, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    const-class v1, Lcom/android/cyanogenmod/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090854

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1111
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1084
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1085
    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mNumTabs:I

    .line 1086
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1090
    :cond_0
    return-void

    .line 1083
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090878

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1199
    const v1, 0x7f090879

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1200
    const v1, 0x7f09087a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v1, 0x7f0904d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1203
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1205
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1056
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1222
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1224
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1226
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1227
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1229
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1230
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$1;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1287
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 856
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 858
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 861
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    .line 862
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 863
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, "action":Ljava/lang/String;
    const/4 v10, 0x0

    .line 865
    .local v10, "defaultListType":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 867
    .local v8, "className":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_0

    .line 868
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 870
    :cond_0
    const-class v1, Lcom/android/cyanogenmod/settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 872
    :cond_1
    const/4 v10, 0x1

    .line 883
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 884
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    .line 885
    const-string v1, "defaultListType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 886
    .local v12, "tmp":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_3

    move v10, v12

    .line 887
    :cond_3
    const-string v1, "showBackground"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    .line 890
    .end local v12    # "tmp":I
    :cond_4
    iput v10, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mDefaultListType:I

    .line 892
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/cyanogenmod/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 894
    .local v9, "containerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 896
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09089d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 897
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09089c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 899
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090880

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 902
    .local v0, "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-static {}, Landroid/os/Environment;->isNoEmulatedStorageExist()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 905
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090882

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 908
    .restart local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_5
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090881

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 914
    .restart local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09087e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 919
    .restart local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/cyanogenmod/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09087f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;Lcom/android/cyanogenmod/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/cyanogenmod/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 924
    .restart local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mNumTabs:I

    .line 928
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 929
    .local v13, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v13, v1}, Lcom/android/cyanogenmod/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

    .line 930
    return-void

    .line 865
    .end local v0    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "containerIntent":Landroid/content/Intent;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 873
    .restart local v8    # "className":Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/android/cyanogenmod/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 876
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    .line 877
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 878
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 880
    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1115
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1118
    const v1, 0x7f090873

    invoke-interface {p1, v3, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1121
    const/4 v1, 0x2

    const v2, 0x7f090874

    invoke-interface {p1, v3, v7, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1124
    const/4 v1, 0x6

    const v2, 0x7f090875

    invoke-interface {p1, v3, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1126
    const/4 v1, 0x7

    const v2, 0x7f090876

    invoke-interface {p1, v3, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1128
    const/16 v1, 0x8

    const v2, 0x7f090877

    invoke-interface {p1, v3, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1130
    const/4 v0, 0x5

    .line 1131
    .local v0, "lastOptionOrder":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cyanogenmod/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    const/16 v1, 0xb

    const v2, 0x7f0900b4

    invoke-interface {p1, v3, v1, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1134
    const/4 v0, 0x6

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    const/16 v1, 0x9

    const v2, 0x7f0908ad

    invoke-interface {p1, v3, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1142
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 936
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 938
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040079

    invoke-virtual {v7, v8, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 940
    .local v4, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 941
    iput-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 942
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v8, 0x7f10014b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    .line 943
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

    if-eqz v7, :cond_0

    .line 944
    const v7, 0x7f0400f7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    .line 945
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 946
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 947
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 948
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 950
    :cond_0
    const v7, 0x7f10001d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 951
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/cyanogenmod/settings/applications/ManageApplications;)V

    .line 952
    .local v0, "adapter":Lcom/android/cyanogenmod/settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 953
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 954
    const v7, 0x7f10001e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/PagerTabStrip;

    .line 955
    .local v6, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v7, 0x7f08005f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 959
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_1

    .line 960
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 963
    :cond_1
    if-eqz p3, :cond_2

    const-string v7, "resetDialog"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 964
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->buildResetDialog()V

    .line 967
    :cond_2
    if-eqz p3, :cond_3

    const-string v7, "appInstallLocationDialog"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 969
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->showAppInstallLocationSettingDlg()V

    .line 972
    :cond_3
    if-nez p3, :cond_4

    .line 974
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "currentListType"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 976
    .local v2, "extraCurrentListType":I
    if-eq v2, v9, :cond_5

    move v1, v2

    .line 978
    .local v1, "currentListType":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mNumTabs:I

    if-ge v3, v7, :cond_4

    .line 979
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 980
    .local v5, "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget v7, v5, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v7, v1, :cond_6

    .line 981
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 987
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_4
    return-object v4

    .line 976
    .restart local v2    # "extraCurrentListType":I
    :cond_5
    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mDefaultListType:I

    goto :goto_0

    .line 978
    .restart local v1    # "currentListType":I
    .restart local v3    # "i":I
    .restart local v5    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1158
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1159
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1153
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1044
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1050
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->release()V

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 1209
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1210
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_1

    .line 1213
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    .line 1215
    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1383
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1384
    iget-object v1, p1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1385
    .local v0, "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1386
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1388
    .end local v0    # "entry":Lcom/android/cyanogenmod/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;

    invoke-virtual {v3, p3}, Lcom/android/cyanogenmod/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1064
    .local v2, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1065
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1067
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1068
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1069
    .local v0, "currentTab":I
    const-string v4, "currentListType"

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1073
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1075
    .end local v0    # "currentTab":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
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
    .line 1080
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1292
    .local v1, "menuId":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 1293
    :cond_0
    iput v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    .line 1294
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_1

    .line 1295
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1319
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateOptionsMenu()V

    move v2, v3

    .line 1320
    :cond_2
    return v2

    .line 1297
    :cond_3
    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    .line 1298
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1299
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1300
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1302
    :cond_4
    const/4 v4, 0x7

    if-ne v1, v4, :cond_5

    .line 1303
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1304
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1305
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1307
    :cond_5
    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    .line 1308
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1309
    :cond_6
    const/16 v4, 0x9

    if-ne v1, v4, :cond_7

    .line 1310
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->showAppInstallLocationSettingDlg()V

    goto :goto_0

    .line 1311
    :cond_7
    const/16 v4, 0xb

    if-ne v1, v4, :cond_2

    .line 1313
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/cyanogenmod/settings/applications/ProtectedAppsActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1314
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1022
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1023
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1024
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1027
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1148
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 997
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 999
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1000
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateNumTabs()V

    .line 1001
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1002
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1006
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1007
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    iget v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1009
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1012
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1013
    const-string v0, "resetDialog"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1016
    const-string v0, "appInstallLocationDialog"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 992
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 993
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1031
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1032
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1034
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1038
    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mAppInstallLocationDialog:Landroid/app/AlertDialog;

    .line 1040
    :cond_1
    return-void
.end method

.method tabForType(I)Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1093
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1094
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 1095
    .local v1, "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1099
    .end local v1    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1093
    .restart local v1    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v1    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1391
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 1392
    .local v3, "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 1395
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1396
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1397
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1401
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1402
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    .line 1403
    .local v2, "t":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1404
    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1399
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1408
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1409
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1410
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1411
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1412
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1414
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1162
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v3, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mCurTab:Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v3, v4, :cond_5

    .line 1171
    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->tabForType(I)Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1172
    .local v1, "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_3

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_3

    # getter for: Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;)Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1174
    .local v0, "showingBackground":Z
    :goto_1
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1175
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1176
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1177
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_4

    move v3, v4

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1178
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1179
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1180
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1182
    :cond_2
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mShowBackground:Z

    goto :goto_0

    .end local v0    # "showingBackground":Z
    :cond_3
    move v0, v2

    .line 1172
    goto :goto_1

    .restart local v0    # "showingBackground":Z
    :cond_4
    move v3, v2

    .line 1177
    goto :goto_2

    .line 1184
    .end local v0    # "showingBackground":Z
    .end local v1    # "tab":Lcom/android/cyanogenmod/settings/applications/ManageApplications$TabInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v6, :cond_6

    move v3, v4

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1185
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v7, :cond_7

    move v3, v4

    :goto_4
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1186
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1187
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1188
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1189
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cyanogenmod/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 1184
    goto :goto_3

    :cond_7
    move v3, v2

    .line 1185
    goto :goto_4
.end method
