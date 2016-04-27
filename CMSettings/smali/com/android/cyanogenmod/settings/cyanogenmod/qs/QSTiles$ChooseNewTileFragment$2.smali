.class Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;
    .param p2, "rhs"    # Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;

    .prologue
    .line 307
    iget-object v0, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 304
    check-cast p1, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;

    check-cast p2, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->compare(Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;Lcom/android/cyanogenmod/settings/cyanogenmod/qs/QSTileHolder;)I

    move-result v0

    return v0
.end method
