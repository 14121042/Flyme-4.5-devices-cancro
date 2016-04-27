.class public Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;
.super Landroid/app/Fragment;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final mIntent:Landroid/content/Intent;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEdit:Landroid/widget/LinearLayout;

.field private mEditMode:Z

.field private mRestore:Landroid/widget/LinearLayout;

.field private mSave:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NAVBAR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    return-void
.end method

.method private toggleEditMode(ZZ)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "save"    # Z

    .prologue
    .line 110
    sget-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    sget-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string v1, "save"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/Utils;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 118
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->toggleEditSaveViews(Z)V

    .line 119
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private toggleEditSaveViews(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 122
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_2

    .line 78
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    .line 79
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    invoke-direct {p0, v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 102
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_4

    .line 81
    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    if-nez v2, :cond_3

    move v1, v0

    :cond_3
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    .line 82
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEditMode:Z

    invoke-direct {p0, v1, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d4

    new-instance v2, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar$1;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 72
    invoke-direct {p0, v0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 73
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v0, 0x7f100169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f100168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f100167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    .line 60
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method
