.class public Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;
.super Landroid/app/Fragment;
.source "NfcTriggerFragment.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/profiles/NFCProfileTagCallback;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field private mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    return-void
.end method

.method private disableTagWriteMode()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method private enableTagWriteMode()V
    .locals 6

    .prologue
    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "tagDetected":Landroid/content/IntentFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    .line 108
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 67
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SubSettings;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/SubSettings;->setNfcProfileCallback(Lcom/android/cyanogenmod/settings/profiles/NFCProfileTagCallback;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const v0, 0x7f04008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 76
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/SubSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/SubSettings;->setNfcProfileCallback(Lcom/android/cyanogenmod/settings/profiles/NFCProfileTagCallback;)V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 90
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->disableTagWriteMode()V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->enableTagWriteMode()V

    .line 85
    :cond_0
    return-void
.end method

.method public onTagRead(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/NFCProfileUtils;->getProfileAsNdef(Lcyanogenmod/app/Profile;)Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/profiles/NFCProfileUtils;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090017

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cyanogenmod/settings/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090018

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
