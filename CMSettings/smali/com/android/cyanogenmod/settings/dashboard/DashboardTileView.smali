.class public Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

.field private mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v3, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mColSpan:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040039

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 62
    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f020021

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitchView()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->pause()V

    .line 95
    :cond_0
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    .line 100
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mTile:Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;

    iget-object v5, v5, Lcom/android/cyanogenmod/settings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/widget/Switch;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 104
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    .line 106
    .local v3, "sw":Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;
    iput-object v3, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    .line 107
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "sw":Lcom/android/cyanogenmod/settings/dashboard/GenericSwitchToggle;
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1
.end method
