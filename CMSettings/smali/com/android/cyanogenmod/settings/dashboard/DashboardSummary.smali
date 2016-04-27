.class public Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 109
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 111
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 113
    check-cast v2, Lcom/android/cyanogenmod/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/cyanogenmod/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v10

    .line 116
    .local v10, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    .line 118
    .local v15, "count":I
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v15, :cond_2

    .line 119
    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;

    .line 121
    .local v11, "category":Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040038

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 124
    .local v14, "categoryView":Landroid/view/View;
    const v2, 0x7f100096

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 125
    .local v13, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v11, v4}, Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v2, 0x7f100097

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 130
    .local v12, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v23

    .line 131
    .local v23, "tilesCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 132
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 134
    .local v5, "tile":Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;
    new-instance v22, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v22, "tileView":Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getSwitchView()Landroid/widget/Switch;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    .line 139
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->setTile(Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;)V

    .line 141
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 145
    .end local v5    # "tile":Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;
    .end local v22    # "tileView":Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 147
    .end local v11    # "category":Lcom/android/cyanogenmod/settings/dashboard/DashboardCategory;
    .end local v12    # "categoryContent":Landroid/view/ViewGroup;
    .end local v13    # "categoryLabel":Landroid/widget/TextView;
    .end local v14    # "categoryView":Landroid/view/View;
    .end local v18    # "i":I
    .end local v23    # "tilesCount":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 148
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Switch;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;
    .param p7, "switchBar"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 154
    iget v1, p3, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 155
    iget v1, p3, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p3, p2}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    .local v0, "summary":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    iget-object v1, p3, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p7, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 176
    :goto_2
    return-void

    .line 157
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 168
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {p7, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 96
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 99
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 87
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/cyanogenmod/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method
