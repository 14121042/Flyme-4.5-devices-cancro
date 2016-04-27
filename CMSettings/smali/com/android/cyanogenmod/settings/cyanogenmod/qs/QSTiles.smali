.class public Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;
.super Landroid/app/Fragment;
.source "QSTiles.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;,
        Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;
    }
.end annotation


# instance fields
.field private mAddDeleteTile:Landroid/view/View;

.field private mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

.field private mDraggingActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->addTile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getSystemUIContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->resetTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->rebuildTiles()V

    return-void
.end method

.method private addTile(Ljava/lang/String;)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 186
    .local v0, "newPosition":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 189
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    .line 190
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateSettings()V

    .line 191
    return-void
.end method

.method private buildQSTile(Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .param p1, "tileType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;

    move-result-object v3

    .line 213
    .local v3, "item":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;
    if-nez v3, :cond_0

    .line 237
    :goto_0
    return-object v4

    .line 216
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0400cf

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;

    .line 218
    .local v4, "qsTile":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 219
    .local v1, "defaultColor":I
    invoke-virtual {v4, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setColor(I)V

    .line 220
    iget-object v7, v3, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 221
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 222
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getSystemUIContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v3, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/cyanogenmod/settings/Utils;->getNamedDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 226
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const v7, 0x1020016

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    .local v5, "title":Landroid/widget/TextView;
    iget-object v7, v3, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v7, 0x7f10000b

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 231
    .local v6, "type":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {p1}, Lcom/android/internal/util/cm/QSUtils;->isDynamicQsTile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f020091

    :goto_1
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "type":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/ColoringCardView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "title":Landroid/widget/TextView;
    .restart local v6    # "type":Landroid/widget/ImageView;
    :cond_2
    const v7, 0x7f020093

    goto :goto_1
.end method

.method public static determineTileCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sysui_qs_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "order":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 251
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x0

    .line 256
    :goto_0
    return v1

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    goto :goto_0
.end method

.method private static getSystemUIContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Lcom/android/cyanogenmod/settings/Utils;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private rebuildTiles()V
    .locals 8

    .prologue
    .line 112
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->resetState()V

    .line 113
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sysui_qs_tiles"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "order":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->resetTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 121
    .local v5, "tileType":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 122
    .local v4, "tile":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 123
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v6, v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "tile":Landroid/view/View;
    .end local v5    # "tileType":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    .line 129
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    .line 131
    return-void
.end method

.method private static resetTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "tiles":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sysui_qs_tiles"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    return-object v0
.end method

.method private updateAddDeleteState()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 167
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v9

    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    :goto_0
    sub-int v0, v9, v6

    .line 168
    .local v0, "activeTiles":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    move v3, v7

    .line 169
    .local v3, "limitReached":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_2

    const v2, 0x7f02006f

    .line 170
    .local v2, "iconResId":I
    :goto_2
    iget-boolean v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v6, :cond_3

    const v5, 0x7f0902c0

    .line 173
    .local v5, "titleResId":I
    :goto_3
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    const v9, 0x1020016

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 174
    .local v4, "title":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 176
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 177
    if-nez v3, :cond_5

    move v6, v7

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    if-nez v3, :cond_6

    :goto_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 181
    return-void

    .end local v0    # "activeTiles":I
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "iconResId":I
    .end local v3    # "limitReached":Z
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "titleResId":I
    :cond_0
    move v6, v7

    .line 167
    goto :goto_0

    .restart local v0    # "activeTiles":I
    :cond_1
    move v3, v8

    .line 168
    goto :goto_1

    .line 169
    .restart local v3    # "limitReached":Z
    :cond_2
    const v2, 0x7f02006c

    goto :goto_2

    .line 170
    .restart local v2    # "iconResId":I
    :cond_3
    if-eqz v3, :cond_4

    const v5, 0x7f0902c2

    goto :goto_3

    :cond_4
    const v5, 0x7f0902c1

    goto :goto_3

    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "title":Landroid/widget/TextView;
    .restart local v5    # "titleResId":I
    :cond_5
    move v6, v8

    .line 177
    goto :goto_4

    :cond_6
    move v7, v8

    .line 180
    goto :goto_5
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 195
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v2, "tiles":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v4, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 202
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    const-string v4, "sysui_qs_tiles"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    return-void
.end method


# virtual methods
.method public isDeleteTarget(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->rebuildTiles()V

    .line 105
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setOnRearrangeListener(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;)V

    .line 106
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v2, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    const-string v3, "sysui_qs_main_tiles"

    invoke-static {v0, v3, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->setUseLargeFirstRow(Z)V

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 67
    const v0, 0x7f11000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v1, 0x7f0400e8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    .line 95
    return-object v0
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    .line 147
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    .line 148
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateSettings()V

    .line 149
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 160
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;-><init>()V

    .line 161
    .local v0, "chooseNewTileFragment":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "choose_tile"

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    .end local v0    # "chooseNewTileFragment":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100331

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-direct {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;-><init>()V

    .line 83
    .local v0, "confirmFrag":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_reset"

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    .line 87
    .end local v0    # "confirmFrag":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 73
    const v1, 0x7f10032a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    .local v0, "search":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    :cond_0
    return-void
.end method

.method public onStartDrag(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;

    invoke-virtual {v1, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mAddDeleteTile:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_0
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->mDraggingActive:Z

    .line 140
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V

    goto :goto_0
.end method
