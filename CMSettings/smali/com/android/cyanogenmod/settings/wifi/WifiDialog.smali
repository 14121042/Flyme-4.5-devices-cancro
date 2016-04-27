.class Lcom/android/cyanogenmod/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

.field private mController:Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean p4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mEdit:Z

    .line 53
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/cyanogenmod/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "hideSubmitButton"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    .line 46
    iput-boolean p5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mController:Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 68
    new-instance v0, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/cyanogenmod/settings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;-><init>(Lcom/android/cyanogenmod/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/cyanogenmod/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mController:Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    .line 69
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mController:Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->hideSubmitButton()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mController:Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/cyanogenmod/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    return-void
.end method
