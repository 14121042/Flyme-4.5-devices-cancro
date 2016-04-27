.class public Lcom/android/cyanogenmod/settings/profiles/AppGroupList;
.super Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mFab:Landroid/view/View;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->addAppGroup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;)Lcyanogenmod/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/profiles/AppGroupList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method private addAppGroup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 115
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400ca

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "content":Landroid/view/View;
    const v6, 0x7f1001d4

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 117
    .local v5, "prompt":Landroid/widget/TextView;
    const v6, 0x7f10002d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 119
    .local v3, "entry":Landroid/widget/EditText;
    const v6, 0x7f0901e9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0901e7

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    const v6, 0x104000a

    new-instance v7, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;

    invoke-direct {v7, p0, v3}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$2;-><init>(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 143
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 6
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 147
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "NotificationGroup"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-class v0, Lcom/android/cyanogenmod/settings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901e5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 152
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v0, 0x7f0400ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 105
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 108
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    .line 110
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->refreshList()V

    .line 66
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 69
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mFab:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mFab:Landroid/view/View;

    new-instance v1, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$1;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList$1;-><init>(Lcom/android/cyanogenmod/settings/profiles/AppGroupList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public refreshList()V
    .locals 8

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 91
    .local v0, "appgroupList":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 94
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, "arr$":[Landroid/app/NotificationGroup;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 95
    .local v2, "group":Landroid/app/NotificationGroup;
    new-instance v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    .local v5, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "group":Landroid/app/NotificationGroup;
    .end local v5    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
