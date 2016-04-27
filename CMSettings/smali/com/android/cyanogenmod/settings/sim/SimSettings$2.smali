.class Lcom/android/cyanogenmod/settings/sim/SimSettings$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/sim/SimSettings;->createPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$2;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 201
    .local v0, "dataEnabled":Z
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/sim/SimSettings$2;->this$0:Lcom/android/cyanogenmod/settings/sim/SimSettings;

    # getter for: Lcom/android/cyanogenmod/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/sim/SimSettings;->access$900(Lcom/android/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 202
    const/4 v1, 0x1

    return v1
.end method
