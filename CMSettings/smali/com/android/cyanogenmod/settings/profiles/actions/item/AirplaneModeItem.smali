.class public Lcom/android/cyanogenmod/settings/profiles/actions/item/AirplaneModeItem;
.super Ljava/lang/Object;
.source "AirplaneModeItem.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 0
    .param p1, "airplaneModeSettings"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lcyanogenmod/profiles/AirplaneModeSettings;

    .end local p1    # "airplaneModeSettings":Lcyanogenmod/profiles/AirplaneModeSettings;
    invoke-direct {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    .line 33
    .restart local p1    # "airplaneModeSettings":Lcyanogenmod/profiles/AirplaneModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 34
    return-void
.end method

.method public static getModeString(Lcyanogenmod/profiles/AirplaneModeSettings;)I
    .locals 2
    .param p0, "settings"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcyanogenmod/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcyanogenmod/profiles/AirplaneModeSettings;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const v0, 0x7f0901d9

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    const v0, 0x7f0901d8

    goto :goto_0

    .line 77
    :cond_1
    const v0, 0x7f0901d6

    goto :goto_0
.end method


# virtual methods
.method public getRowType()Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/cyanogenmod/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f100005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f090044

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-static {v3}, Lcom/android/cyanogenmod/settings/profiles/actions/item/AirplaneModeItem;->getModeString(Lcyanogenmod/profiles/AirplaneModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-object v2

    .line 53
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
    .line 43
    const/4 v0, 0x1

    return v0
.end method
