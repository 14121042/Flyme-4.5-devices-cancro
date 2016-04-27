.class public Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2052
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/cyanogenmod/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2065
    :goto_0
    return-void

    .line 2058
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2059
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/cyanogenmod/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$2900(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2061
    new-instance v1, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 2062
    .local v1, "dialog":Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2063
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2064
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2070
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/cyanogenmod/settings/DataUsageSummary;

    .line 2071
    .local v5, "target":Lcom/android/cyanogenmod/settings/DataUsageSummary;
    # getter for: Lcom/android/cyanogenmod/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/cyanogenmod/settings/DataUsageSummary;->access$3000(Lcom/android/cyanogenmod/settings/DataUsageSummary;)Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2073
    .local v3, "editor":Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2074
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2076
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04003b

    const/4 v1, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 2077
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f10009c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2079
    .local v2, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2080
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 2081
    .local v12, "warningBytes":J
    invoke-virtual {v3, v4}, Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2083
    .local v10, "limitBytes":J
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2084
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 2085
    const-wide/32 v0, 0x100000

    div-long v0, v12, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2089
    :goto_0
    const-wide/32 v0, 0x100000

    div-long v0, v10, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2090
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2092
    const v0, 0x7f090bc3

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2093
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2095
    const v14, 0x7f090bc1

    new-instance v0, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/cyanogenmod/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/cyanogenmod/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/cyanogenmod/settings/DataUsageSummary;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2108
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2087
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0
.end method
