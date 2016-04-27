.class Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;
.super Landroid/os/AsyncTask;
.source "LtoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LtoDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDestination:Ljava/io/File;

.field private mSource:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mSource:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    .line 163
    :try_start_0
    const-string v2, "lto-download"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 169
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "LtoService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    return-void

    .line 164
    .end local v1    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LtoService"

    const-string v3, "Could not create temporary file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private finish(I)V
    .locals 10
    .param p1, "result"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 277
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    .line 279
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    if-eqz v6, :cond_3

    .line 280
    if-nez p1, :cond_0

    .line 281
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 282
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    iget-object v7, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 283
    const-string v6, "LtoService"

    const-string v7, "Could not move temporary file to destination"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 295
    :goto_1
    if-nez p1, :cond_5

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 297
    .local v4, "now":J
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 299
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "lto_last_download"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    # invokes: Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;
    invoke-static {v6, v4, v5}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->access$000(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;

    .line 302
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    # invokes: Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->notifyNewGpsData()V
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->access$100(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;)V

    .line 313
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "now":J
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 314
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    invoke-virtual {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->stopSelf()V

    .line 315
    return-void

    .line 285
    :cond_2
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_0

    .line 289
    :cond_3
    if-eqz p1, :cond_4

    .line 290
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 292
    :cond_4
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_1

    .line 304
    :cond_5
    if-ne p1, v8, :cond_1

    .line 306
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    # invokes: Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->getLastDownload()J
    invoke-static {v6}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->access$200(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v2, v6, v8

    .line 307
    .local v2, "lastDownload":J
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;

    # invokes: Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;
    invoke-static {v6, v2, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;->access$000(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 21
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "in":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 181
    .local v9, "out":Ljava/io/BufferedOutputStream;
    const/4 v15, 0x0

    .line 184
    .local v15, "result":I
    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mSource:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 185
    .local v3, "connection":Ljava/net/URLConnection;
    const-string v18, "Connection"

    const-string v19, "close"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const v18, 0xafc8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 187
    const v18, 0xafc8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 188
    new-instance v8, Ljava/lang/Thread;

    new-instance v18, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask$1;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;Ljava/net/URLConnection;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    .local v8, "interruptThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    .line 202
    .local v13, "outputFile":Ljava/io/File;
    :goto_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .local v7, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .local v12, "out":Ljava/io/BufferedOutputStream;
    const/16 v18, 0x800

    :try_start_2
    move/from16 v0, v18

    new-array v2, v0, [B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    .local v2, "buffer":[B
    const/16 v16, 0x0

    .line 207
    .local v16, "total":I
    const-wide/16 v10, 0x0

    .line 209
    .local v10, "length":J
    :try_start_3
    const-string v18, "Content-Length"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 210
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v10

    .line 218
    .end local v17    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v18, 0x0

    :try_start_4
    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v2, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "count":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_1

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 220
    const/4 v15, 0x2

    .line 233
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 235
    const-string v18, "LtoService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Downloaded "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bytes of LTO data"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz v16, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-lez v18, :cond_3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v10

    if-eqz v18, :cond_3

    .line 237
    :cond_2
    const/4 v15, 0x1

    .line 239
    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 240
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    if-eqz v7, :cond_4

    .line 250
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 252
    :cond_4
    if-eqz v12, :cond_5

    .line 253
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    move-object v9, v12

    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 260
    .end local v2    # "buffer":[B
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v4    # "count":I
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "interruptThread":Ljava/lang/Thread;
    .end local v10    # "length":J
    .end local v13    # "outputFile":Ljava/io/File;
    .end local v16    # "total":I
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :cond_6
    :goto_2
    const-string v18, "LtoService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "return "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    return-object v18

    .line 200
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "interruptThread":Ljava/lang/Thread;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 223
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "length":J
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outputFile":Ljava/io/File;
    .restart local v16    # "total":I
    :cond_8
    const/16 v18, 0x0

    :try_start_7
    move/from16 v0, v18

    invoke-virtual {v12, v2, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 224
    add-int v16, v16, v4

    .line 226
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-lez v18, :cond_0

    .line 227
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    long-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 228
    .local v14, "progress":F
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    float-to-int v0, v14

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_1

    .line 241
    .end local v2    # "buffer":[B
    .end local v4    # "count":I
    .end local v10    # "length":J
    .end local v14    # "progress":F
    .end local v16    # "total":I
    :catch_0
    move-exception v5

    move-object v9, v12

    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 242
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "interruptThread":Ljava/lang/Thread;
    .end local v13    # "outputFile":Ljava/io/File;
    .local v5, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_8
    const-string v18, "LtoService"

    const-string v19, "URI syntax wrong"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 243
    const/4 v15, 0x1

    .line 249
    if-eqz v6, :cond_9

    .line 250
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 252
    :cond_9
    if-eqz v9, :cond_6

    .line 253
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 255
    :catch_1
    move-exception v5

    .line 256
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 255
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v4    # "count":I
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "interruptThread":Ljava/lang/Thread;
    .restart local v10    # "length":J
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outputFile":Ljava/io/File;
    .restart local v16    # "total":I
    :catch_2
    move-exception v5

    .line 256
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v12

    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 258
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 244
    .end local v2    # "buffer":[B
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "interruptThread":Ljava/lang/Thread;
    .end local v10    # "length":J
    .end local v13    # "outputFile":Ljava/io/File;
    .end local v16    # "total":I
    :catch_3
    move-exception v5

    .line 245
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string v18, "LtoService"

    const-string v19, "Failed downloading LTO data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 246
    const/4 v15, 0x1

    .line 249
    if-eqz v6, :cond_a

    .line 250
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 252
    :cond_a
    if-eqz v9, :cond_6

    .line 253
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    .line 255
    :catch_4
    move-exception v5

    .line 256
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 248
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 249
    :goto_5
    if-eqz v6, :cond_b

    .line 250
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 252
    :cond_b
    if-eqz v9, :cond_c

    .line 253
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 257
    :cond_c
    :goto_6
    throw v18

    .line 255
    :catch_5
    move-exception v5

    .line 256
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 248
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "interruptThread":Ljava/lang/Thread;
    .restart local v13    # "outputFile":Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v18

    move-object v9, v12

    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 244
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v5

    move-object v9, v12

    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 241
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v8    # "interruptThread":Ljava/lang/Thread;
    .end local v13    # "outputFile":Ljava/io/File;
    :catch_8
    move-exception v5

    goto :goto_3

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "interruptThread":Ljava/lang/Thread;
    .restart local v13    # "outputFile":Ljava/io/File;
    :catch_9
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 213
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "length":J
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "total":I
    :catch_a
    move-exception v18

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->finish(I)V

    .line 274
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->finish(I)V

    .line 269
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 175
    return-void
.end method
