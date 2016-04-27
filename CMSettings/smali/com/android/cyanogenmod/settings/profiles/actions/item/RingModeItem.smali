.class public Lcom/android/cyanogenmod/settings/profiles/actions/item/RingModeItem;
.super Ljava/lang/Object;
.source "RingModeItem.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lcyanogenmod/profiles/RingModeSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 0
    .param p1, "ringModeSettings"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcyanogenmod/profiles/RingModeSettings;

    .end local p1    # "ringModeSettings":Lcyanogenmod/profiles/RingModeSettings;
    invoke-direct {p1}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    .line 34
    .restart local p1    # "ringModeSettings":Lcyanogenmod/profiles/RingModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    .line 35
    return-void
.end method

.method public static getModeString(Lcyanogenmod/profiles/RingModeSettings;)I
    .locals 3
    .param p0, "settings"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    const v0, 0x7f09000d

    .line 67
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const v0, 0x7f09000e

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const v0, 0x7f09000f

    goto :goto_0

    .line 79
    :cond_3
    const v0, 0x7f0901d6

    goto :goto_0
.end method


# virtual methods
.method public getRowType()Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f100005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f09000c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/profiles/actions/item/RingModeItem;->getModeString(Lcyanogenmod/profiles/RingModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-object v2

    .line 54
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
