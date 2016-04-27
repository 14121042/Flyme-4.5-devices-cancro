.class public Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# instance fields
.field mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mIsPattern:Z

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryPattern:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mIsPattern:Z

    .line 63
    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    .line 66
    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 69
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$1;-><init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$2;-><init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;-><init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method private resetPatternState(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pattern_lock_protected_apps"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    .line 247
    iput-object v7, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 248
    if-eqz v0, :cond_1

    .line 249
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0904d8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090830

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 261
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 262
    return-void

    :cond_2
    move v2, v3

    .line 244
    goto :goto_0

    :cond_3
    move v4, v3

    .line 252
    goto :goto_1

    :cond_4
    move v2, v5

    .line 253
    goto :goto_2

    :cond_5
    move v3, v5

    .line 255
    goto :goto_3

    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09083d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private switchToAccount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    iput-boolean v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mIsPattern:Z

    .line 211
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 216
    return-void
.end method

.method private switchToPattern(Z)V
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    const/4 v3, 0x0

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0, v3}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 200
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mIsPattern:Z

    .line 201
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09083d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    .line 204
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 207
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 221
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->setContentView(I)V

    .line 223
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    .line 225
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    .line 231
    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 233
    invoke-direct {p0, v2}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 239
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v0, 0x7f020068

    const/4 v3, 0x0

    .line 132
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 133
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v1, :cond_0

    .line 134
    const v1, 0x7f0900b0

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 139
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    .line 140
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mIsPattern:Z

    if-eqz v1, :cond_1

    .line 142
    .local v0, "icon":I
    :goto_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 144
    .end local v0    # "icon":I
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_1
    const v0, 0x7f0200b3

    goto :goto_0
.end method

.method public onNotifyAccountReset()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 185
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 162
    const-string v0, "isAccountView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToAccount()V

    .line 174
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 166
    const-string v0, "pattern_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 167
    const-string v0, "confirming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 168
    const-string v0, "retrypattern"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 169
    const-string v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    .line 170
    const-string v0, "create"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    .line 171
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const-string v1, "continueEnabled"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v1, "isAccountView"

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string v0, "continueEnabled"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string v0, "confirming"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v0, "retrypattern"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetryPattern:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "retry"

    iget v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mRetry:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v0, "pattern_hash"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 156
    const-string v0, "create"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p1, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    .line 361
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 362
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 363
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 364
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 365
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 369
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 370
    .local v1, "hash":[B
    goto :goto_0

    .line 371
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 372
    goto :goto_0
.end method
