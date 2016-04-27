.class Lcom/android/cyanogenmod/settings/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/ButtonSettings;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    # getter for: Lcom/android/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ButtonSettings;->access$000(Lcom/android/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    # getter for: Lcom/android/cyanogenmod/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/ButtonSettings;->access$100(Lcom/android/cyanogenmod/settings/ButtonSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    # getter for: Lcom/android/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ButtonSettings;->access$000(Lcom/android/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/ButtonSettings$1;->this$0:Lcom/android/cyanogenmod/settings/ButtonSettings;

    # getter for: Lcom/android/cyanogenmod/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/ButtonSettings;->access$000(Lcom/android/cyanogenmod/settings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/cyanogenmod/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/ButtonSettings;->access$200(Lcom/android/cyanogenmod/settings/ButtonSettings;Z)V

    .line 739
    return-void
.end method
