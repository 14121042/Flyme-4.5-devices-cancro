.class public Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;,
        Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 86
    new-instance v0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 555
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;
    .param p1, "x1"    # Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 376
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 378
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 379
    invoke-direct {p0, v0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private findKeysToRemove(I)Ljava/util/List;
    .locals 14
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/cyanogenmod/settings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v1

    .line 168
    .local v1, "advancedModeEnabled":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, "preferencesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;>;"
    const/4 v7, 0x0

    .line 171
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 175
    :cond_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    if-eq v10, v12, :cond_1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 179
    :cond_1
    const/4 v5, 0x0

    .line 181
    .local v5, "lastCategoryKey":Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 182
    .local v8, "preferenceScreenDepth":I
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 185
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-eq v10, v12, :cond_8

    if-ne v10, v13, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_8

    .line 187
    :cond_3
    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    .line 191
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "nodeName":Ljava/lang/String;
    if-ne v10, v13, :cond_4

    .line 193
    const-string v11, "PreferenceCategory"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 194
    const/4 v5, 0x0

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {p0, v11, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {p0, v11, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getAdvancedBoolean(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Boolean;

    move-result-object v0

    .line 202
    .local v0, "advanced":Ljava/lang/Boolean;
    if-eqz v0, :cond_5

    .line 203
    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 205
    new-instance v11, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;

    invoke-direct {v11, v5, v4}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_5
    :goto_1
    const-string v11, "PreferenceCategory"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {p0, v11, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 206
    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 208
    new-instance v11, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;

    invoke-direct {v11, v5, v4}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 216
    .end local v0    # "advanced":Ljava/lang/Boolean;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "lastCategoryKey":Ljava/lang/String;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "preferenceScreenDepth":I
    .end local v10    # "type":I
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 217
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Error parsing PreferenceScreen"

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11

    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "lastCategoryKey":Ljava/lang/String;
    .restart local v8    # "preferenceScreenDepth":I
    .restart local v10    # "type":I
    :cond_8
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 221
    :cond_9
    return-object v9

    .line 216
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "lastCategoryKey":Ljava/lang/String;
    .end local v8    # "preferenceScreenDepth":I
    .end local v10    # "type":I
    :catch_1
    move-exception v11

    move-object v3, v11

    goto :goto_2
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 423
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 424
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 425
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 426
    check-cast v3, Landroid/preference/Preference;

    .line 427
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "n":I
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :goto_1
    return v2

    .line 423
    .restart local v1    # "item":Ljava/lang/Object;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getAdvancedBoolean(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    sget-object v0, Lcom/android/cyanogenmod/settings/R$styleable;->Preference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getBoolean(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 266
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 269
    .local v1, "tv":Landroid/util/TypedValue;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 270
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 276
    :goto_0
    return-object v2

    .line 273
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 276
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 246
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 247
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 249
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 250
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 251
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 252
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 254
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 257
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 240
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 388
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    .line 389
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 390
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 393
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v4, v0

    .line 395
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 398
    new-instance v4, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$3;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$3;-><init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 419
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method private maybeStripAdvancedPreferences(I)V
    .locals 6
    .param p1, "preferenceResId"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->findKeysToRemove(I)Ljava/util/List;

    move-result-object v4

    .line 152
    .local v4, "prefsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;

    .line 153
    .local v2, "nodeInfo":Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;
    iget-object v5, v2, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 154
    .local v0, "c":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 155
    iget-object v5, v2, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 156
    .local v3, "p":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 164
    .end local v0    # "c":Landroid/preference/PreferenceGroup;
    .end local v2    # "nodeInfo":Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$PreferenceNodeInfo;
    .end local v3    # "p":Landroid/preference/Preference;
    :cond_2
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0
    .param p1, "preferencesResId"    # I

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 147
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->maybeStripAdvancedPreferences(I)V

    .line 148
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 667
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 465
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 474
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/cyanogenmod/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/cyanogenmod/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$2;-><init>(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v1

    .line 106
    .local v1, "helpResource":I
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 112
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    .line 116
    const-string v2, "android:preference_highlighted_key"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    const-string v2, "android:preference_highlighted"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 121
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    const/16 v1, 0x65

    const v2, 0x7f090c60

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 455
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/cyanogenmod/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 457
    .end local v0    # "helpItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 131
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 502
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 503
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 301
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 303
    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 309
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "android:preference_highlighted_key"

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 325
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 326
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 319
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 334
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 337
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 526
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 527
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 438
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    # setter for: Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$402(Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 549
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    new-instance v0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/cyanogenmod/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 512
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 671
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 672
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/cyanogenmod/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 673
    check-cast v0, Lcom/android/cyanogenmod/settings/SettingsActivity;

    .local v0, "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 674
    invoke-virtual/range {v0 .. v6}, Lcom/android/cyanogenmod/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 685
    .end local v0    # "sa":Lcom/android/cyanogenmod/settings/SettingsActivity;
    :goto_0
    return v1

    .line 676
    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    move-object v0, v7

    .line 677
    check-cast v0, Landroid/preference/PreferenceActivity;

    .local v0, "sa":Landroid/preference/PreferenceActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 678
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 679
    goto :goto_0

    .line 681
    .end local v0    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cyanogenmod/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 347
    :cond_1
    return-void
.end method
