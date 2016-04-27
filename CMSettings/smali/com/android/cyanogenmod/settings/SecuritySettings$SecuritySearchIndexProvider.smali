.class Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 592
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 593
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 683
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 684
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v4, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 685
    :cond_0
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_1
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 689
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 690
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_2
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 641
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f09051e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 644
    .local v0, "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    iput-object v5, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 645
    iput-object v5, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 646
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    iget-boolean v8, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v8, :cond_0

    .line 649
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    const v3, 0x7f09051a

    .line 652
    .local v3, "resId":I
    :goto_0
    new-instance v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 653
    .restart local v0    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 654
    iput-object v5, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 655
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v3    # "resId":I
    :cond_0
    const-string v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 661
    .local v7, "um":Landroid/os/UserManager;
    const-string v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 662
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 664
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    const v6, 0x7f090ab4

    .line 668
    .local v6, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 669
    .restart local v0    # "data":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 670
    iput-object v5, v0, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 671
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v6    # "storageSummaryRes":I
    :cond_1
    return-object v4

    .line 649
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_2
    const v3, 0x7f090518

    goto :goto_0

    .line 664
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_3
    const v6, 0x7f090ab5

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 606
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v5, p0, Lcom/android/cyanogenmod/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 607
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 610
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 629
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 630
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f060044

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 631
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    return-object v3

    .line 613
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f060041

    .line 614
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 615
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 616
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    .end local v2    # "resId":I
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    :pswitch_2
    const v2, 0x7f06004a

    .line 621
    .restart local v2    # "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 622
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 623
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
