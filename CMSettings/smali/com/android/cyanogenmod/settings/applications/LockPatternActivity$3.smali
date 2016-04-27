.class Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 108
    .local v0, "btn":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-boolean v3, v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 111
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 112
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pattern_lock_protected_apps"

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternHash:[B

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->setResult(I)V

    .line 116
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->finish()V

    .line 127
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 119
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0904d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 122
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090835

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity$3;->this$0:Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090837

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
