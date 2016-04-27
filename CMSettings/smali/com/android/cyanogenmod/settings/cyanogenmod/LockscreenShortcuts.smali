.class public Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;
.super Landroid/app/Fragment;
.source "LockscreenShortcuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;
    }
.end annotation


# static fields
.field private static final sIconIds:[I


# instance fields
.field private mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

.field private mDefaultTintList:Landroid/content/res/ColorStateList;

.field private mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

.field private mSelectedView:Landroid/view/View;

.field private mShortcutHelper:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->sIconIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100146
        0x7f100148
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method private createActionList()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$1;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    .line 152
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    const-string v1, "none"

    const v2, 0x7f090301

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    const-string v1, "default"

    const v2, 0x7f090300

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 154
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    const-string v1, "action_app"

    const v2, 0x7f090b51

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method private initiateViews(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 118
    .local v5, "size":I
    sget-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->sIconIds:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 119
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 120
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    new-instance v1, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;

    const/4 v7, -0x1

    invoke-direct {v1, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;-><init>(I)V

    .line 123
    .local v1, "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    invoke-virtual {v1, v9, v9, v5, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;->setBounds(IIII)V

    .line 124
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    .end local v3    # "id":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onTargetChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;

    .line 203
    .local v0, "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;->hideGlow()V

    .line 221
    .end local v0    # "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v1, "action_app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->saveCustomActions()V

    .line 212
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->updateDrawables()V

    .line 213
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    new-instance v2, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$4;

    invoke-direct {v2, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$4;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private saveCustomActions()V
    .locals 8

    .prologue
    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->sIconIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 226
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 227
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "id":I
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mShortcutHelper:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    invoke-virtual {v7, v4}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->saveTargets(Ljava/util/List;)V

    .line 231
    return-void
.end method

.method private setUnlockIcon(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    const v2, 0x7f100147

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 109
    .local v1, "unlock":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mDefaultTintList:Landroid/content/res/ColorStateList;

    .line 110
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mShortcutHelper:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    const-string v3, "ic_lock_24dp"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getDrawableFromSystemUI(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    return-void
.end method

.method private updateDrawables()V
    .locals 7

    .prologue
    .line 129
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mShortcutHelper:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    invoke-virtual {v5}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->getDrawablesForTargets()Ljava/util/List;

    move-result-object v3

    .line 130
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->sIconIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 131
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;

    .line 132
    .local v2, "item":Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;
    sget-object v5, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->sIconIds:[I

    aget v1, v5, v0

    .line 133
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 134
    .local v4, "v":Landroid/widget/ImageView;
    iget-object v5, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    const-string v5, "none"

    iget-object v6, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    const v5, 0x7f020069

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_1
    iget-object v5, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 141
    const-string v5, "default"

    iget-object v6, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    iget-object v6, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mDefaultTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 130
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v5, v2, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 145
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 148
    .end local v1    # "id":I
    .end local v2    # "item":Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;
    .end local v4    # "v":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    .line 167
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;

    .line 169
    .local v0, "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mSelectedView:Landroid/view/View;

    new-instance v5, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$1;

    invoke-direct {v5, p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 176
    new-instance v3, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$2;

    invoke-direct {v3, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$2;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)V

    .line 184
    .local v3, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$3;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$3;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)V

    .line 191
    .local v1, "cancel":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090303

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    invoke-virtual {v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 197
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 45
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;

    .line 46
    .local v0, "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;->showGlow()V

    goto :goto_0

    .line 50
    .end local v0    # "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;

    .line 51
    .restart local v0    # "background":Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/GlowBackground;->hideGlow()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mPicker:Lcom/android/cyanogenmod/settings/cyanogenmod/ShortcutPickHelper;

    .line 100
    new-instance v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;-><init>(Landroid/content/Context;Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->mShortcutHelper:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    .line 101
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->createActionList()V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->initiateViews(Landroid/view/View;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->setUnlockIcon(Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->updateDrawables()V

    .line 105
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "isApplication"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V

    .line 39
    return-void
.end method
