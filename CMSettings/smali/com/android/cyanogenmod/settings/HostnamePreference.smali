.class public Lcom/android/cyanogenmod/settings/HostnamePreference;
.super Landroid/preference/EditTextPreference;
.source "HostnamePreference.java"


# instance fields
.field private final DEFAULT_HOSTNAME:Ljava/lang/String;

.field mHostnameInputFilter:Landroid/text/InputFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cyanogenmod/settings/HostnamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v1, Lcom/android/cyanogenmod/settings/HostnamePreference$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/HostnamePreference$1;-><init>(Lcom/android/cyanogenmod/settings/HostnamePreference;)V

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    .line 53
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    const-string v1, "android-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->mHostnameInputFilter:Landroid/text/InputFilter;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    return-void

    .line 58
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "hostname":Ljava/lang/String;
    const-string v1, "(?:\\.|-)+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "^(?:\\.|-)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/HostnamePreference;->DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->setText(Ljava/lang/String;)V

    .line 95
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_1
    return-void

    .line 90
    .restart local v0    # "hostname":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public persistHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/HostnamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_hostname"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string v0, "HostnamePreference"

    const-string v1, "tried to set null hostname, request ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "HostnamePreference"

    const-string v1, "setting empty hostname"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    const-string v0, "net.hostname"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/HostnamePreference;->persistHostname(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/HostnamePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "HostnamePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname has been set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
