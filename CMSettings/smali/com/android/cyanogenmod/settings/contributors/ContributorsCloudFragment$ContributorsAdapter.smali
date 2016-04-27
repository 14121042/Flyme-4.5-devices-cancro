.class Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContributorsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const v0, 0x7f10005b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 132
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f040024

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 133
    new-instance v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    invoke-direct {v2, v4}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;-><init>(Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$1;)V

    .line 134
    .local v2, "viewHolder":Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    const v3, 0x7f10005b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .end local v1    # "li":Landroid/view/LayoutInflater;
    .end local v2    # "viewHolder":Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    .line 140
    .local v0, "dataHolder":Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    .line 141
    .restart local v2    # "viewHolder":Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;
    iget-object v3, v2, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
