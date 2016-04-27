.class public Lcom/android/cyanogenmod/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/CryptKeeper$ValidationTask;,
        Lcom/android/cyanogenmod/settings/CryptKeeper$DecryptTask;,
        Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static final LOCK_BUTTON_IDS:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mLockPatternButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mStatusText:Landroid/widget/TextView;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/cyanogenmod/settings/CryptKeeper;->LOCK_BUTTON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10006a
        0x7f10006b
        0x7f10006c
        0x7f10006d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mIgnoreBack:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCooldown:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    .line 140
    iput v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mNotificationCountdown:I

    .line 142
    iput v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 143
    const v0, 0x7f090b3e

    iput v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I

    .line 153
    new-instance v0, Lcom/android/cyanogenmod/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$1;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/android/cyanogenmod/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$2;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 334
    new-instance v0, Lcom/android/cyanogenmod/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$3;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 734
    new-instance v0, Lcom/android/cyanogenmod/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$6;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/cyanogenmod/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/cyanogenmod/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/cyanogenmod/settings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/cyanogenmod/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/cyanogenmod/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/cyanogenmod/settings/CryptKeeper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f090b44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    return-void
.end method

.method private cooldown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 704
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 710
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f090531

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 714
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 1031
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1032
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 599
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 601
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 603
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 604
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 607
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f10006f

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 609
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 612
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->updateProgress()V

    .line 613
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->beginAttempt()V

    .line 731
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 897
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 898
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 899
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 901
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1024
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1020
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 248
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_0

    .line 249
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 250
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_2

    .line 254
    iput-boolean v12, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCooldown:Z

    .line 257
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->cooldown()V

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rsub-int/lit8 v3, v7, 0x1e

    .line 260
    .local v3, "remainingAttempts":I
    const/16 v7, 0xa

    if-ge v3, v7, :cond_4

    .line 261
    const v7, 0x7f090532

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 262
    .local v6, "warningTemplate":Ljava/lang/CharSequence;
    new-array v7, v12, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 264
    .local v5, "warning":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v5    # "warning":Ljava/lang/CharSequence;
    .end local v6    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_3

    .line 284
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 285
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 286
    invoke-direct {p0, v12}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    .line 290
    :cond_3
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 291
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 292
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v7, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 295
    invoke-direct {p0, v12}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 266
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 268
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 269
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 274
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 275
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f090b43

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error calling mount service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 277
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f090b41

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 279
    :cond_6
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f090b42

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 857
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 860
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 862
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 864
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 890
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 865
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 868
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 869
    add-int/lit8 v2, v2, 0x1

    .line 870
    goto :goto_0

    .line 873
    :cond_2
    const/4 v0, 0x0

    .line 874
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 875
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 879
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 884
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 885
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 886
    goto :goto_0

    .line 890
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1015
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 378
    iget v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 379
    iget v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mNotificationCountdown:I

    .line 393
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 398
    iget v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 403
    :cond_1
    :goto_1
    return-void

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v11, 0x0

    .line 767
    const v9, 0x7f100067

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 768
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 769
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 770
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 772
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 773
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 774
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 777
    :cond_0
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 779
    const v9, 0x7f100053

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView;

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 780
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v9, :cond_2

    .line 781
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 782
    sget-object v0, Lcom/android/cyanogenmod/settings/CryptKeeper;->LOCK_BUTTON_IDS:[I

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget v4, v0, v3

    .line 783
    .local v4, "id":I
    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 784
    .local v1, "btn":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 785
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    .end local v0    # "arr$":[I
    .end local v1    # "btn":Landroid/widget/Button;
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v7    # "len$":I
    :cond_2
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v9

    if-nez v9, :cond_3

    .line 793
    const v9, 0x7f100066

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 794
    .local v2, "emergencyCall":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 795
    const-string v9, "CryptKeeper"

    const-string v10, "Removing the emergency Call button"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 800
    .end local v2    # "emergencyCall":Landroid/view/View;
    :cond_3
    const v9, 0x7f100068

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 801
    .local v5, "imeSwitcher":Landroid/view/View;
    const-string v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 803
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    invoke-direct {p0, v6, v11}, Lcom/android/cyanogenmod/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 804
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 805
    new-instance v9, Lcom/android/cyanogenmod/settings/CryptKeeper$7;

    invoke-direct {v9, p0, v6}, Lcom/android/cyanogenmod/settings/CryptKeeper$7;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    :cond_4
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v9, :cond_5

    .line 817
    const-string v9, "CryptKeeper"

    const-string v10, "Acquiring wakelock."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v9, "power"

    invoke-virtual {p0, v9}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 819
    .local v8, "pm":Landroid/os/PowerManager;
    if-eqz v8, :cond_5

    .line 820
    const/16 v9, 0x1a

    const-string v10, "CryptKeeper"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 821
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 824
    const/16 v9, 0x60

    iput v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 830
    .end local v8    # "pm":Landroid/os/PowerManager;
    :cond_5
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCooldown:Z

    if-nez v9, :cond_6

    .line 831
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/cyanogenmod/settings/CryptKeeper$8;

    invoke-direct {v10, p0, v6}, Lcom/android/cyanogenmod/settings/CryptKeeper$8;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    :cond_6
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 840
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object v9, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v9, v14, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 844
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x480000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 846
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 950
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 952
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 953
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 959
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 950
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 721
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mIgnoreBack:Z

    .line 722
    if-eqz p1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 727
    :goto_1
    return-void

    .line 721
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setPatternButtonsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1091
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1092
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1094
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040032

    .line 486
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 488
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 495
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 496
    :cond_4
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    :cond_5
    new-instance v1, Lcom/android/cyanogenmod/settings/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$4;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 548
    :cond_6
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 550
    new-instance v2, Lcom/android/cyanogenmod/settings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;Lcom/android/cyanogenmod/settings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 551
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(Z)V
    .locals 7
    .param p1, "corrupt"    # Z

    .prologue
    const v6, 0x7f100023

    const v5, 0x7f100005

    const/4 v4, 0x0

    .line 623
    const v2, 0x7f100070

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 626
    const v2, 0x7f100071

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 627
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    new-instance v2, Lcom/android/cyanogenmod/settings/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/cyanogenmod/settings/CryptKeeper$5;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    if-eqz p1, :cond_1

    .line 642
    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090536

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 643
    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090537

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 649
    :goto_0
    const v2, 0x7f100072

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 651
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_0
    return-void

    .line 645
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090534

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 646
    invoke-virtual {p0, v6}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090535

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1003
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 968
    const v2, 0x7f100066

    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 970
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 975
    new-instance v2, Lcom/android/cyanogenmod/settings/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/CryptKeeper$9;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 990
    const v1, 0x7f090bd7

    .line 994
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 983
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 992
    :cond_2
    const v1, 0x7f090bd6

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 657
    const-string v7, "vold.encrypt_progress"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "state":Ljava/lang/String;
    const-string v7, "error_partially_encrypted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    invoke-direct {p0, v11}, Lcom/android/cyanogenmod/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 697
    :goto_0
    return-void

    .line 665
    :cond_0
    const v7, 0x7f09052f

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 666
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 669
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    const/16 v1, 0x32

    .line 673
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "progress":Ljava/lang/String;
    const-string v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encryption progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_1
    const-string v7, "vold.encrypt_time_remaining"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 680
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 682
    add-int/lit8 v7, v5, 0x9

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v5, v7, 0xa

    .line 683
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 684
    const v7, 0x7f090530

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 690
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 691
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    new-array v8, v10, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_2
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 669
    .end local v2    # "progress":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1058
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1048
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1070
    const/4 v0, 0x3

    .line 1082
    .local v0, "size":B
    :goto_1
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setContentView(I)V

    .line 1083
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->passwordEntryInit()V

    .line 1085
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v2, 0x7f090b40

    iput v2, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusString:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1086
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setLockPatternSize(B)V

    .line 1087
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->postInvalidate()V

    goto :goto_0

    .line 1073
    .end local v0    # "size":B
    :pswitch_0
    const/4 v0, 0x4

    .line 1074
    .restart local v0    # "size":B
    goto :goto_1

    .line 1076
    .end local v0    # "size":B
    :pswitch_1
    const/4 v0, 0x5

    .line 1077
    .restart local v0    # "size":B
    goto :goto_1

    .line 1079
    .end local v0    # "size":B
    :pswitch_2
    const/4 v0, 0x6

    .restart local v0    # "size":B
    goto :goto_1

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x7f10006b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0xd06

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 429
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 433
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/cyanogenmod/settings/CryptKeeper;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 443
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->finish()V

    .line 468
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 448
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 449
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_3
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 457
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 459
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 460
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 462
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 464
    check-cast v3, Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 465
    .local v3, "retained":Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 466
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v0    # "lastInstance":Ljava/lang/Object;
    .end local v3    # "retained":Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 579
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 906
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 908
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 931
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 915
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 920
    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 922
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 923
    new-instance v3, Lcom/android/cyanogenmod/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/cyanogenmod/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/cyanogenmod/settings/CryptKeeper;Lcom/android/cyanogenmod/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v1, v2

    .line 929
    goto :goto_0

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->delayAudioNotification()V

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 569
    new-instance v0, Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 570
    .local v0, "state":Lcom/android/cyanogenmod/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 572
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 478
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->setupUi()V

    .line 479
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 558
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->delayAudioNotification()V

    .line 1054
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->delayAudioNotification()V

    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 589
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    .line 590
    return-void
.end method
