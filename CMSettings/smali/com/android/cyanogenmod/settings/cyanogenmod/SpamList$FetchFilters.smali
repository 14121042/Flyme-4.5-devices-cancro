.class Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;
.super Landroid/os/AsyncTask;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchFilters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;)V

    return-void
.end method

.method private addNotificationsForPackage(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V
    .locals 12
    .param p1, "pInfo"    # Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;>;"
    const/4 v2, 0x0

    .line 165
    const-string v3, "package_id=?"

    .line 166
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->id:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 167
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->MESSAGES_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->access$400()Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 169
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 170
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 171
    .local v10, "notificationIdIndex":I
    const-string v0, "message_text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 172
    .local v11, "notificationMessageIndex":I
    const-string v0, "last_blocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 173
    .local v8, "notificationBlockedIndex":I
    const-string v0, "count"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 174
    .local v9, "notificationCountIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;

    invoke-direct {v7, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$1;)V

    .line 176
    .local v7, "nInfo":Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    .line 177
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;->id:Ljava/lang/String;

    .line 178
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;->date:J

    .line 179
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    .line 180
    iget-object v0, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;->appLabel:Ljava/lang/CharSequence;

    .line 181
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v7    # "nInfo":Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v8    # "notificationBlockedIndex":I
    .end local v9    # "notificationCountIndex":I
    .end local v10    # "notificationIdIndex":I
    .end local v11    # "notificationMessageIndex":I
    :cond_1
    return-void
.end method

.method private getAppInfo(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    invoke-virtual {v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 212
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->access$600()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 193
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 194
    .local v9, "packageIdIndex":I
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 195
    .local v10, "packageNameIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v8, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;

    invoke-direct {v8, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$1;)V

    .line 197
    .local v8, "pInfo":Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-direct {p0, v8}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->getAppInfo(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;)V

    .line 199
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;->id:Ljava/lang/String;

    .line 200
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, v8, v7}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->addNotificationsForPackage(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 203
    .end local v8    # "pInfo":Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$PackageInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v9    # "packageIdIndex":I
    .end local v10    # "packageNameIndex":I
    :cond_1
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    new-instance v1, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    invoke-direct {v1, v2, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;Ljava/util/List;)V

    # setter for: Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->access$102(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;

    .line 222
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    # getter for: Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->access$100(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;)Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;

    const/4 v1, 0x0

    # setter for: Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->mTask:Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;->access$202(Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList;Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;)Lcom/android/cyanogenmod/settings/cyanogenmod/SpamList$FetchFilters;

    .line 224
    return-void
.end method
