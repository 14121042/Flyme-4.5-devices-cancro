.class final Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v14, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;>;"
    const v32, 0x7f0908e3

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 813
    .local v24, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    .line 814
    # invokes: Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 815
    .local v23, "localeName":Ljava/lang/String;
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 816
    .local v13, "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "phone_language"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 817
    const v32, 0x7f0908e6

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 818
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 819
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 820
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 821
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    .end local v23    # "localeName":Ljava/lang/String;
    :cond_0
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 826
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "spellcheckers_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 827
    const v32, 0x7f090c03

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 828
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 829
    const v32, 0x7f090cd5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 830
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-static/range {p1 .. p1}, Lcom/android/cyanogenmod/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 834
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 835
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "user_dict_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 836
    const v32, 0x7f0908ff

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 837
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 838
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_1
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 843
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 844
    const v32, 0x7f0908e5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 845
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 846
    const v32, 0x7f090ce2

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 847
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-static/range {p1 .. p1}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    .line 851
    .local v12, "immValues":Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v12}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 854
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 856
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "current_input_method"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 857
    const v32, 0x7f090923

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 858
    iput-object v6, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 859
    iput-object v6, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 860
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 861
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v32, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 867
    .local v18, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    .line 868
    .local v19, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v19, :cond_3

    const/16 v17, 0x0

    .line 869
    .local v17, "inputMethodCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 870
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 872
    .local v16, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v32, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    .line 875
    .local v29, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 876
    .local v27, "subtypeCount":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 877
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    .line 878
    .local v26, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_2

    .line 879
    const/16 v32, 0x2c

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 884
    .local v28, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 876
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 868
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "inputMethodCount":I
    .end local v20    # "j":I
    .end local v26    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "subtypeCount":I
    .end local v28    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    goto :goto_0

    .line 886
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v17    # "inputMethodCount":I
    .restart local v20    # "j":I
    .restart local v27    # "subtypeCount":I
    .restart local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 888
    .local v30, "summary":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    .line 889
    .local v25, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 893
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 895
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 896
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 897
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 898
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 902
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "j":I
    .end local v25    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v27    # "subtypeCount":I
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v30    # "summary":Ljava/lang/String;
    :cond_5
    const-string v32, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    .line 904
    .local v15, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v9, 0x0

    .line 906
    .local v9, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 907
    .local v8, "devices":[I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_a

    .line 908
    aget v32, v8, v10

    invoke-static/range {v32 .. v32}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 909
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v32

    if-nez v32, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v32

    if-nez v32, :cond_7

    .line 907
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 913
    :cond_7
    const/4 v9, 0x1

    .line 915
    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 916
    .local v11, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    .line 918
    .local v22, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    .line 922
    .local v21, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_5
    if-eqz v21, :cond_9

    .line 923
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    .line 928
    .restart local v30    # "summary":Ljava/lang/String;
    :goto_6
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 929
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 930
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 931
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 932
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 933
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 934
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 918
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 925
    .restart local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_9
    const v32, 0x7f0908fd

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "summary":Ljava/lang/String;
    goto :goto_6

    .line 937
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 939
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 940
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "builtin_keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 941
    const v32, 0x7f090930

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 943
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 944
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 948
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "auto_replace"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 949
    const v32, 0x7f0908e8

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 950
    const v32, 0x7f0908e9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 951
    const v32, 0x7f0908e9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 952
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 953
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 957
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "auto_caps"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 958
    const v32, 0x7f0908ea

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 959
    const v32, 0x7f0908eb

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 960
    const v32, 0x7f0908eb

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 961
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 962
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 966
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "auto_punctuate"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 967
    const v32, 0x7f0908ec

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 968
    const v32, 0x7f0908ee

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 969
    const v32, 0x7f0908ee

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 970
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 971
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_b
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 976
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "voice_input_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 977
    const v32, 0x7f090a63

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 978
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 979
    const v32, 0x7f090cd6

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 980
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    new-instance v31, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 984
    .local v31, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v31 .. v31}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c

    .line 985
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 986
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "tts_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 987
    const v32, 0x7f090a6a

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 988
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 989
    const v32, 0x7f090cd7

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 990
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_c
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 995
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "pointer_settings_category"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 996
    const v32, 0x7f0908f5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 997
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 998
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1001
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "pointer_speed"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1002
    const v32, 0x7f0908f6

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1003
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1004
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    # invokes: Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/android/cyanogenmod/settings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1008
    new-instance v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1009
    .restart local v13    # "indexable":Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;
    const-string v32, "vibrate_input_devices"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1010
    const v32, 0x7f0908f8

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1011
    const v32, 0x7f0908f9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1012
    const v32, 0x7f0908f9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1013
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1014
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_d
    return-object v14
.end method
