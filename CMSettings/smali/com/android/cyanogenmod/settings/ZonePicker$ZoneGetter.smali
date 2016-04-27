.class Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;
.super Ljava/lang/Object;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneGetter"
.end annotation


# instance fields
.field private final mLocalZones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNow:Ljava/util/Date;

.field private final mZoneNameFormatter:Ljava/text/SimpleDateFormat;

.field private final mZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    .line 234
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "zzzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addTimeZone(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "olsonId"    # Ljava/lang/String;
    .param p2, "localize"    # Z

    .prologue
    .line 275
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 281
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 283
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v4, "name"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v4, "gmt"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/cyanogenmod/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "offset"

    iget-object v5, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void

    .line 287
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "localeName":Ljava/lang/String;
    invoke-static {v1, p1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getZones(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 237
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 238
    .local v5, "olsonId":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v5    # "olsonId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 242
    .local v7, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 245
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 246
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v13, :cond_6

    .line 247
    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v12, :cond_3

    .line 248
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 249
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    .line 270
    .end local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_3
    return-object v8

    .line 251
    .restart local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 265
    .end local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    .line 266
    .local v6, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "ZonePicker"

    const-string v9, "Ill-formatted timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v6    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    iget-object v8, p0, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    goto :goto_3

    .line 253
    .restart local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timezone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .restart local v5    # "olsonId":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "localizeInPicker"

    const/4 v10, 0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 257
    .local v4, "localize":Z
    invoke-direct {p0, v5, v4}, Lcom/android/cyanogenmod/settings/ZonePicker$ZoneGetter;->addTimeZone(Ljava/lang/String;Z)V

    .line 259
    .end local v4    # "localize":Z
    .end local v5    # "olsonId":Ljava/lang/String;
    :cond_4
    :goto_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v13, :cond_5

    .line 260
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 267
    .end local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 268
    .local v2, "ioe":Ljava/io/IOException;
    const-string v8, "ZonePicker"

    const-string v9, "Unable to read timezones.xml file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 262
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v7    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1

    .line 264
    :cond_6
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method
