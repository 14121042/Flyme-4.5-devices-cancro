.class Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/cyanogenmod/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    # invokes: Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$000(Lcom/android/cyanogenmod/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 67
    return-void
.end method
