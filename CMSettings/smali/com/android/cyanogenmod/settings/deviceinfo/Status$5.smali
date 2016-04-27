.class Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 416
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 418
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 419
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 420
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Lcom/android/cyanogenmod/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 422
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 423
    iget-object v5, p0, Lcom/android/cyanogenmod/settings/deviceinfo/Status$5;->this$0:Lcom/android/cyanogenmod/settings/deviceinfo/Status;

    const v6, 0x1040515

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 427
    const/4 v4, 0x1

    .line 429
    .end local v0    # "cm":Landroid/content/ClipboardManager;
    :cond_0
    return v4
.end method
