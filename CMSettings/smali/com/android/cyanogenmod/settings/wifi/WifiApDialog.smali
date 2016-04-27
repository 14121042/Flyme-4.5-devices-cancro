.class public Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final KEY_SHOW_PASSWORD:Ljava/lang/String;

.field private final PREFS_FILE:Ljava/lang/String;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "wifi_ap"

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->PREFS_FILE:Ljava/lang/String;

    .line 46
    const-string v0, "show_password"

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->KEY_SHOW_PASSWORD:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 65
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    invoke-static {p3}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 70
    :cond_0
    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f100290

    .line 196
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 153
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->validate()V

    .line 182
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 178
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 89
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 91
    iget v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 93
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 98
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 99
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 164
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_ap"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_password"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    return-void

    .line 164
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040111

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 112
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f10028f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 114
    .local v1, "mSecurity":Landroid/widget/Spinner;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v8}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f0906a3

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 120
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f10000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f10028e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 122
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f1001d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 124
    const/4 v4, -0x1

    const v5, 0x7f09066d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/4 v4, -0x2

    const v5, 0x7f09066f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    iget v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v8, :cond_0

    .line 132
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f100291

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 138
    .local v2, "showPassword":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi_ap"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "show_password"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 141
    .local v3, "showPasswordChecked":Z
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->onClick(Landroid/view/View;)V

    .line 143
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 149
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->validate()V

    .line 150
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 187
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 188
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/wifi/WifiApDialog;->validate()V

    .line 189
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
    .line 193
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
    .line 175
    return-void
.end method
