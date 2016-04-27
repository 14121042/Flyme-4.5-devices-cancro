.class Lcom/android/cyanogenmod/settings/location/LocationMode$4;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/location/LocationMode$4;->this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 258
    .local v0, "chooseValue":Z
    if-eqz v0, :cond_1

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/location/LocationMode$4;->this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;

    # getter for: Lcom/android/cyanogenmod/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/location/LocationMode;->access$400(Lcom/android/cyanogenmod/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/location/LocationMode$4;->this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;

    # getter for: Lcom/android/cyanogenmod/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/location/LocationMode;->access$400(Lcom/android/cyanogenmod/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/location/XT/IXTSrv;->showDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/location/LocationMode$4;->this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;

    # getter for: Lcom/android/cyanogenmod/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/location/LocationMode;->access$400(Lcom/android/cyanogenmod/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/location/LocationMode$4;->this$0:Lcom/android/cyanogenmod/settings/location/LocationMode;

    # getter for: Lcom/android/cyanogenmod/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/location/LocationMode;->access$400(Lcom/android/cyanogenmod/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/location/XT/IXTSrv;->disable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 271
    :catch_1
    move-exception v1

    .line 272
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
