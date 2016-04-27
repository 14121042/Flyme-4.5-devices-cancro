.class public Lcom/android/cyanogenmod/settings/profiles/actions/item/BrightnessItem;
.super Ljava/lang/Object;
.source "BrightnessItem.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lcyanogenmod/profiles/BrightnessSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 0
    .param p1, "brightnessSettings"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcyanogenmod/profiles/BrightnessSettings;

    .end local p1    # "brightnessSettings":Lcyanogenmod/profiles/BrightnessSettings;
    invoke-direct {p1}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    .line 34
    .restart local p1    # "brightnessSettings":Lcyanogenmod/profiles/BrightnessSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    .line 35
    return-void
.end method


# virtual methods
.method public getRowType()Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;->BRIGHTNESS_ITEM:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    const v4, 0x7f040072

    invoke-virtual {p1, v4, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 57
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x7f100005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x7f090045

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f100059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "desc":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v4}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090046

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v7}, Lcyanogenmod/profiles/BrightnessSettings;->getValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_1
    return-object v3

    .line 54
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "desc":Landroid/widget/TextView;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 67
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "desc":Landroid/widget/TextView;
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f0901d6

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
