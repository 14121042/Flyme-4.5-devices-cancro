.class Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 104
    .local v11, "extras":Landroid/os/PersistableBundle;
    const-string v2, "uniqueId"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "deviceId":Ljava/lang/String;
    const-string v2, "deviceName"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "deviceName":Ljava/lang/String;
    const-string v2, "version"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "deviceVersion":Ljava/lang/String;
    const-string v2, "country"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "deviceCountry":Ljava/lang/String;
    const-string v2, "carrier"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "deviceCarrier":Ljava/lang/String;
    const-string v2, "carrierId"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "deviceCarrierId":Ljava/lang/String;
    const-string v2, "timeStamp"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 111
    .local v16, "timeStamp":J
    const-string v2, "optOut"

    invoke-virtual {v11, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 113
    .local v9, "optOut":Z
    const/4 v14, 0x0

    .line 114
    .local v14, "success":Z
    const-string v2, "job_type"

    const/4 v15, -0x1

    invoke-virtual {v11, v2, v15}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 115
    .local v12, "jobType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    packed-switch v12, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    # getter for: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$300(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->DEBUG:Z
    invoke-static {}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "job id "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", has finished with success="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    move-object/from16 v18, v0

    if-nez v14, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v2}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 157
    const/4 v2, 0x0

    return-object v2

    .line 119
    :pswitch_0
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v13, "json":Lorg/json/JSONObject;
    const-string v2, "optOut"

    invoke-virtual {v13, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    const-string v2, "uniqueId"

    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "deviceName"

    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "version"

    invoke-virtual {v13, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "country"

    invoke-virtual {v13, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "carrier"

    invoke-virtual {v13, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "carrierId"

    invoke-virtual {v13, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "timestamp"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    # invokes: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->uploadToCyanogen(Lorg/json/JSONObject;)Z
    invoke-static {v2, v13}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$000(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto/16 :goto_0

    .line 130
    .end local v13    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 131
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v15, "Could not upload stats checkin to cyanogen server"

    invoke-static {v2, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v14, 0x0

    .line 134
    goto/16 :goto_0

    .line 138
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;

    # invokes: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static/range {v2 .. v9}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$200(Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    goto/16 :goto_0

    .line 140
    :catch_1
    move-exception v10

    .line 141
    .local v10, "e":Ljava/io/IOException;
    # getter for: Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/cyanogenmod/settings/cmstats/StatsUploadJobService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v15, "Could not upload stats checkin to commnity server"

    invoke-static {v2, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 156
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 130
    :catch_2
    move-exception v10

    goto :goto_2

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
