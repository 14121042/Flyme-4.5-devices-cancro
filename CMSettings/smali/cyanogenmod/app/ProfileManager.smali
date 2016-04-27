.class public Lcyanogenmod/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final NO_PROFILE:Ljava/util/UUID;

.field private static mEmptyProfile:Lcyanogenmod/app/Profile;

.field private static sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

.field private static sService:Lcyanogenmod/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/ProfileManager;->NO_PROFILE:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 224
    iput-object v0, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 228
    :goto_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    .line 229
    new-instance v1, Lcyanogenmod/app/Profile;

    const-string v2, "EmptyProfile"

    invoke-direct {v1, v2}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcyanogenmod/app/ProfileManager;->mEmptyProfile:Lcyanogenmod/app/Profile;

    .line 230
    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    sget-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcyanogenmod/app/ProfileManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/ProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    .line 241
    :cond_0
    sget-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/app/IProfileManager;
    .locals 2

    .prologue
    .line 246
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    if-eqz v1, :cond_0

    .line 247
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    .line 251
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 249
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcyanogenmod/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    .line 251
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->addProfile(Lcyanogenmod/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfile()Lcyanogenmod/app/Profile;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 288
    iget-object v1, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 292
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    const/4 v1, 0x0

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcyanogenmod/app/ProfileManager;->mEmptyProfile:Lcyanogenmod/app/Profile;

    goto :goto_0
.end method

.method public getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 524
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 3

    .prologue
    .line 457
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 461
    :goto_0
    return-object v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfiles()[Lcyanogenmod/app/Profile;
    .locals 3

    .prologue
    .line 394
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 398
    :goto_0
    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notificationGroupExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->notificationGroupExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 484
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->removeProfile(Lcyanogenmod/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAll()V
    .locals 3

    .prologue
    .line 551
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->resetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 554
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 4
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x1

    .line 272
    iget-object v1, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 276
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 335
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
