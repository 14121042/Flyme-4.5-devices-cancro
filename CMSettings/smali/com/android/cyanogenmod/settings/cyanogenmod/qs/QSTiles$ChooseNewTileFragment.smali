.class public Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;
.super Landroid/app/DialogFragment;
.source "QSTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseNewTileFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 266
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->setCancelable(Z)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->setShowsDialog(Z)V

    .line 269
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 277
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v9, "sysui_qs_tiles"

    invoke-static {v4, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "order":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, "savedTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v8, "tilesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 284
    .local v7, "tile":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;

    move-result-object v1

    .line 286
    .local v1, "holder":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;
    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v1    # "holder":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;
    .end local v7    # "tile":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;

    invoke-direct {v6, p0, v8}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;Ljava/util/List;)V

    .line 304
    .local v6, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;

    invoke-direct {v9, p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    new-instance v0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSListAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    # invokes: Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->getSystemUIContext(Landroid/content/Context;)Landroid/content/Context;
    invoke-static {v10}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles;->access$100(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v9, v10, v8}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSListAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/util/List;)V

    .line 314
    .local v0, "adapter":Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSListAdapter;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0902bf

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0904d8

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
