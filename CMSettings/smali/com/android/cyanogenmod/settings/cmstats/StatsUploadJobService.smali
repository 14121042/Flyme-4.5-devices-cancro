.class public Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;
.super Landroid/app/job/JobService;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrentJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->uploadToCyanogen(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    return v0
.end method

.method private getAuthToken()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const v7, 0x7f0903df

    invoke-virtual {p0, v7}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 245
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 246
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 248
    const-string v7, "Accept-Encoding"

    const-string v10, "identity"

    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v7, "Content-Type"

    const-string v10, "text/plain"

    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 254
    .local v3, "responseCode":I
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_3

    move v4, v8

    .line 255
    .local v4, "success":Z
    :goto_0
    sget-boolean v7, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "server auth response code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    if-nez v4, :cond_4

    move v7, v8

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "response":Ljava/lang/String;
    sget-boolean v7, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 258
    sget-object v7, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server auth response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_1
    if-eqz v4, :cond_5

    .line 266
    if-eqz v6, :cond_2

    .line 267
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v4    # "success":Z
    .end local v5    # "url":Ljava/net/URL;
    :cond_2
    :goto_2
    return-object v2

    .restart local v3    # "responseCode":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_3
    move v4, v9

    .line 254
    goto :goto_0

    .restart local v4    # "success":Z
    :cond_4
    move v7, v9

    .line 256
    goto :goto_1

    .line 266
    .restart local v2    # "response":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    .line 267
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v4    # "success":Z
    .end local v5    # "url":Ljava/net/URL;
    :cond_6
    :goto_3
    const-string v2, ""

    goto :goto_2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v7, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const-string v8, "error getting auth token"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v6, :cond_6

    .line 267
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_7

    .line 267
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v7
.end method

.method private getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .locals 6
    .param p1, "httpUrlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "errorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v1, Ljava/io/BufferedInputStream;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_0
    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 279
    .local v1, "responseStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 281
    .local v2, "responseStreamReader":Ljava/io/BufferedReader;
    const-string v0, ""

    .line 282
    .local v0, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "responseStream":Ljava/io/InputStream;
    .end local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    .line 286
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 287
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceVersion"    # Ljava/lang/String;
    .param p4, "deviceCountry"    # Ljava/lang/String;
    .param p5, "deviceCarrier"    # Ljava/lang/String;
    .param p6, "deviceCarrierId"    # Ljava/lang/String;
    .param p7, "optOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const v5, 0x7f0903dd

    invoke-virtual {p0, v5}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "opt_out"

    if-eqz p7, :cond_2

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v7, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_hash"

    invoke-virtual {v5, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_name"

    invoke-virtual {v5, v6, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_version"

    invoke-virtual {v5, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_country"

    invoke-virtual {v5, v6, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_carrier"

    invoke-virtual {v5, v6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "device_carrier_id"

    invoke-virtual {v5, v6, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 175
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 178
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 179
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 182
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 183
    .local v0, "responseCode":I
    sget-boolean v5, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cm server response code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_3

    const/4 v1, 0x1

    .line 185
    .local v1, "success":Z
    :goto_1
    if-nez v1, :cond_1

    .line 186
    sget-object v6, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed sending, server returned: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return v1

    .line 167
    .end local v0    # "responseCode":I
    .end local v1    # "success":Z
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    const-string v5, "0"

    goto/16 :goto_0

    .line 184
    .restart local v0    # "responseCode":I
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 186
    .restart local v1    # "success":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 191
    .end local v0    # "responseCode":I
    .end local v1    # "success":Z
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v5
.end method

.method private uploadToCyanogen(Lorg/json/JSONObject;)Z
    .locals 12
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 198
    invoke-direct {p0}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "authToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 201
    sget-object v10, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const-string v11, "no auth token!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    new-instance v5, Ljava/net/URL;

    const v10, 0x7f0903de

    invoke-virtual {p0, v10}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 207
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 208
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 209
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 211
    const-string v10, "Accept-Encoding"

    const-string v11, "identity"

    invoke-virtual {v6, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v10, "Authorization"

    invoke-virtual {v6, v10, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 216
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v10, v1, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 217
    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 219
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 220
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 222
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 224
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 225
    .local v3, "responseCode":I
    const/16 v10, 0xc8

    if-ne v3, v10, :cond_3

    move v4, v8

    .line 227
    .local v4, "success":Z
    :goto_0
    if-nez v4, :cond_4

    :goto_1
    invoke-direct {p0, v6, v8}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "response":Ljava/lang/String;
    sget-boolean v8, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 229
    sget-object v8, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "server responseCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", response="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    if-nez v4, :cond_2

    .line 232
    sget-object v8, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed sending, server returned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return v4

    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_3
    move v4, v9

    .line 225
    goto :goto_0

    .restart local v4    # "success":Z
    :cond_4
    move v8, v9

    .line 227
    goto :goto_1

    .line 236
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v3    # "responseCode":I
    .end local v4    # "success":Z
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x1

    .line 66
    sget-boolean v1, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob() called with jobParameters = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    new-instance v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;

    invoke-direct {v0, p0, p1}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;-><init>(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V

    .line 69
    .local v0, "uploadTask":Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-array v2, v4, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v1, 0x1

    .line 76
    sget-boolean v2, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopJob() called with jobParameters = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;

    .line 82
    .local v0, "cancelledJob":Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->cancel(Z)Z

    .line 88
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
